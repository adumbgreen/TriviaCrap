package me.klayderpus.triviacrack;

import android.app.AndroidAppHelper;
import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import android.widget.Toast;
import de.robv.android.xposed.*;
import de.robv.android.xposed.callbacks.XC_LoadPackage;

import static de.robv.android.xposed.XposedHelpers.findAndHookMethod;

/**
 * Trivia Crack Xposed Cheats
 * @author Klayderpus
 * @since 12/15/2014
 *
 * Useful, game-breaking cheats for Trivia Crack.
 *
 * TODO:
 *  + Make bomb power-ups remove all 3 wrong answers rather than two
 *  + Extend the timer to answer a question or completely stall it
 *  + Make power-ups cost nothing to the player
 *
 *  ++ Add an Activity to allow the user to set any of these cheats on/off
 */
public class TriviaCrackCheat implements IXposedHookLoadPackage, IXposedHookZygoteInit {

    private static final String PACKAGE_NAME = "com.etermax.preguntados.lite";

    private static final String ANSWER_CLASS = "com.etermax.preguntados.datasource.dto.QuestionDTO";
    private static final String ANSWER_METHOD = "getText";

    private XSharedPreferences prefs;

    @Override
    public void initZygote(IXposedHookZygoteInit.StartupParam startupParam) throws Throwable {
        prefs = new XSharedPreferences("me.klayderpus.triviacrack");
        prefs.makeWorldReadable();
    }

    @Override
    public void handleLoadPackage(final XC_LoadPackage.LoadPackageParam lpparam) throws Throwable {
        if (!lpparam.packageName.equals(PACKAGE_NAME))
            return;

        XposedBridge.log("[TRIVIA CRACK] ======== handleLoadPackage success!");

        boolean cheatAnswers = false, cheatPowerup = false, cheatBomb = false, cheatTimer = false;
        try {
            prefs.reload();

            XposedBridge.log("[TRIVIA CRACK] ======== " + String.valueOf(prefs.getAll().size()) + " prefs");
            cheatAnswers = prefs.getBoolean("prefEnableAnswer", false);
            cheatPowerup = prefs.getBoolean("prefEnablePowerup", false);
            cheatBomb = prefs.getBoolean("prefEnableBomb", false);
            cheatTimer = prefs.getBoolean("prefEnableTimer", false);

            if (cheatAnswers || cheatPowerup || cheatBomb || cheatTimer)
                XposedBridge.log("[TRIVIA CRACK] ======== Preferences loaded!");
            else
                XposedBridge.log("[TRIVIA CRACK] ======== Preferences loaded - nothing active!");
        } catch (Exception e) {
            XposedBridge.log("[TRIVIA CRACK] ======== ERROR LOADING PREFERENCES");
        }

        if (cheatAnswers)
            /**
             * Toast correct answer
             *   Hooks into QuestionDTO.getText, which is called to fetch a question's text on creating a view - this is
             *   right when the user is presented with the questions, so a Toast would be optimal here.
             *   Calls QuestionDTO.getCorrectAnswer using the provided class instance from MethodHookParam and retrieves
             *   the value (and adds one to it - it's array indexed)
             */
            findAndHookMethod(
                    ANSWER_CLASS,                                   // hook the question data class
                    lpparam.classLoader,                            // use the provided class loader
                    ANSWER_METHOD,                                  // hook into getText - called when creating views

                    // Add a hook after the method executes
                    new XC_MethodHook() {
                        @Override
                        protected void afterHookedMethod(MethodHookParam param) throws Throwable {
                            // Fetch the value from QuestionDTO.getCorrectAnswer() and add one (array-indexed)
                            int correctAnswer = (Integer) XposedHelpers.callMethod(param.thisObject, "getCorrectAnswer") + 1;

                            // Log what we found just in case
                            XposedBridge.log("[TRIVIA CRACK] ======== Hooked QuestionDTO: Answer is # " + String.valueOf(correctAnswer));

                            // Display the Toast to the user
                            Toast.makeText(AndroidAppHelper.currentApplication(), "Choose #" + String.valueOf(correctAnswer) + "!", Toast.LENGTH_LONG).show();
                        }
                    }
            );
    }

}
