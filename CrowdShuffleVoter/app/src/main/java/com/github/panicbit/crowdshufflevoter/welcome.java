package com.github.panicbit.crowdshufflevoter;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;

public class welcome extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_welcome);

        final Button cameraButton = (Button) findViewById(R.id.startCameraButton);
        final Button exitButton = (Button) findViewById(R.id.exitButton);
    }


    /** Called when the user clicks the Send button */
    public void enterCamera(View view) {
        // Do something in response to button
        Intent intent = new Intent(this, MainActivity.class);
        //EditText editText = (EditText) findViewById(R.id.edit_message);
        startActivity(intent);
    }

    /** Called when the user clicks the Send button */
    public void exitProgram(View view) {
        //(not-really)suggested way to close app
        System.exit(0);
    }

}
