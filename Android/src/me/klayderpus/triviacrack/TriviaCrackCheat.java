package me.klayderpus.triviacrack;

import android.app.AndroidAppHelper;
import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import android.widget.Toast;
import de.robv.android.xposed.*;
import de.robv.android.xposed.callbacks.XC_LoadPackage;

import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;

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

    private static final String FREEBIES_CLASS = "com.etermax.preguntados.datasource.dto.PowerUpDTO";
    private static final String FREEBIES_METHOD = "getCost";

    private XSharedPreferences prefs;

    @Override
    public void initZygote(IXposedHookZygoteInit.StartupParam startupParam) throws Throwable {
        prefs = new XSharedPreferences("me.klayderpus.triviacrack"); // Get an Xposed shared preferences list
        prefs.makeWorldReadable(); // Make it readable for us (also done in SettingsFragment onPause
    }

    @Override
    public void handleLoadPackage(final XC_LoadPackage.LoadPackageParam lpparam) throws Throwable {
        if (!lpparam.packageName.equals(PACKAGE_NAME))
            return;

        XposedBridge.log("[TRIVIA CRACK] ======== handleLoadPackage success!");

        boolean cheatAnswers = false, cheatPowerup = false, cheatBomb = false, cheatTimer = false, cheatFreebies = false;
        try {
            prefs.reload(); // Reload preferences, just in case

            // Fetch preferences from the Settings activity
            cheatAnswers = prefs.getBoolean("prefEnableAnswer", false);
            cheatPowerup = prefs.getBoolean("prefEnablePowerup", false);
            cheatBomb = prefs.getBoolean("prefEnableBomb", false);
            cheatTimer = prefs.getBoolean("prefEnableTimer", false);
            cheatFreebies = prefs.getBoolean("prefEnableFreebies", false);

            XposedBridge.log("[TRIVIA CRACK] ======== Preferences loaded - " + prefs.getAll().size() + " total");
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

        if (cheatFreebies)
            /**
             * Change cost of all power-ups to zero
             *   Hooks into PowerUpDTO.getCost and changes the returned cost to 0 for every time the method is called
             */
            findAndHookMethod(
                FREEBIES_CLASS,
                lpparam.classLoader,
                FREEBIES_METHOD,

                new XC_MethodHook() {
                    @Override
                    public void afterHookedMethod(MethodHookParam param) throws Throwable {
                        XposedBridge.log("[TRIVIA CRACK] ======== Hooked PowerUpDTO: Cost 0");
                        param.setResult(0);
                    }
                }
            );

        findAndHookMethod(
                "com.etermax.preguntados.ui.game.a.a",
                lpparam.classLoader,
                "a",

                new XC_MethodHook() {
                    @Override
                    public void afterHookedMethod(MethodHookParam param) throws Throwable {
                        XposedBridge.log("[TRIVIA CRACK] ======== Hooked com.etermax.preguntados.ui.game.a.a.a(): Timer elapsed 0");
                        param.setResult(0L);
                    }
                }
        );

        findAndHookMethod(
                "com.etermax.preguntados.ui.game.question.c",
                lpparam.classLoader,
                "a",

                "com.etermax.preguntados.datasource.dto.enums.PowerUp",

                new XC_MethodHook() {
                    @Override
                    protected void afterHookedMethod(MethodHookParam param) throws Throwable {
                        ArrayList<Integer> qs = new ArrayList<Integer>();

                        // this should be f, a subclass of c

                        Field r = XposedHelpers.findField(param.thisObject.getClass().getSuperclass(), "r");
                        Method b = param.thisObject.getClass().getSuperclass().getDeclaredMethod("b", Integer.class);
                        //XposedHelpers.findMethodBestMatch(param.thisObject.getClass(), "b", Integer.class);

                        Class<?> questionDTO = r.getType();

                        XposedBridge.log("[TRIVIA CRACK] ======== CLAZZ " + questionDTO.getCanonicalName());

                        Method getAnswers = XposedHelpers.findMethodBestMatch(questionDTO, "getAnswers");
                        Method getCorrectAnswer = XposedHelpers.findMethodBestMatch(questionDTO, "getCorrectAnswer");

                        List answers = (List) getAnswers.invoke(r.get(param.thisObject));
                        for(int i = 0; i < answers.size(); i++)
                            qs.add(i);
                        qs.remove((Integer) getCorrectAnswer.invoke(r.get(param.thisObject)));
                        for(int i : qs)
                            b.invoke(param.thisObject., i);
                    }
                }

                /**
                 * ArrayList arraylist = new ArrayList();
                 for (int k1 = 0; k1 < r.getAnswers().size(); k1++)
                 {
                 arraylist.add(Integer.valueOf(k1));
                 }

                 arraylist.remove(r.getCorrectAnswer());
                 while (i1 < 2)
                 {
                 int l1 = (int)(100D * Math.random()) % arraylist.size();
                 b((Integer)arraylist.get(l1));
                 arraylist.remove(l1);
                 i1++;
                 }
                 */
        );
    }

}
