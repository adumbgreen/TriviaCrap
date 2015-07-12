package me.klayderpus.triviacrack;

import android.os.Bundle;
import android.preference.PreferenceActivity;
import android.preference.PreferenceManager;

public class SettingsActivity extends PreferenceActivity {
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        getFragmentManager().beginTransaction().replace(android.R.id.content, new SettingsFragment()).commit(); // Add fragment
        PreferenceManager.setDefaultValues(this, R.xml.prefs, false); // Load settings from xml/prefs.xml
        getPreferenceManager().setSharedPreferencesMode(MODE_WORLD_READABLE); // Update file permissions so it's readable
    }
}