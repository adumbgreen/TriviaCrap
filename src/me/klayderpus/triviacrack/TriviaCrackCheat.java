package me.klayderpus.triviacrack;

import android.app.AndroidAppHelper;
import android.content.Context;
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
public class TriviaCrackCheat implements IXposedHookLoadPackage {

    private static final String PACKAGE_NAME = "com.etermax.preguntados.lite";

    private static final String ANSWER_CLASS = "com.etermax.preguntados.datasource.dto.QuestionDTO";
    private static final String ANSWER_METHOD = "getText";

    @Override
    public void handleLoadPackage(final XC_LoadPackage.LoadPackageParam lpparam) throws Throwable {
        if (!lpparam.packageName.equals(PACKAGE_NAME))
            return;

        XposedBridge.log("[TRIVIA CRACK] ======== handleLoadPackage success!");

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
