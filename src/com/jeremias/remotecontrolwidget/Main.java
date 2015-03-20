

package com.jeremias.remotecontrolwidget;

import android.app.PendingIntent;
import android.appwidget.AppWidgetManager;
import android.appwidget.AppWidgetProvider;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import android.widget.RemoteViews;

public class Main extends AppWidgetProvider
{

    public Main()
    {
    }

    public void onUpdate(Context context, AppWidgetManager appwidgetmanager, int ai[])
    {
        Intent intent = new Intent(context, com/jeremias/remotecontrolwidget/RemWidgetReceiver);
        Intent intent1 = new Intent(context, com/jeremias/remotecontrolwidget/RemWidgetReceiver);
        Intent intent2 = new Intent(context, com/jeremias/remotecontrolwidget/RemWidgetReceiver);
        Intent intent3 = new Intent(context, com/jeremias/remotecontrolwidget/RemWidgetReceiver);
        Intent intent4 = new Intent(context, com/jeremias/remotecontrolwidget/RemWidgetReceiver);
        intent.setAction("COM_FLASHLIGHT");
        intent1.setAction("COM_MUTE");
        intent2.setAction("COM_VOLUP");
        intent3.setAction("COM_VOLDOWN");
        intent4.setAction("COM_SOURCE");
        Log.i("System.out", "Hello!");
        intent.putExtra("appWidgetIds", ai);
        PendingIntent pendingintent = PendingIntent.getBroadcast(context, 0, intent, 0);
        PendingIntent pendingintent1 = PendingIntent.getBroadcast(context, 1, intent4, 0);
        PendingIntent pendingintent2 = PendingIntent.getBroadcast(context, 2, intent2, 0);
        PendingIntent pendingintent3 = PendingIntent.getBroadcast(context, 3, intent3, 0);
        PendingIntent.getBroadcast(context, 5, intent1, 0);
        RemoteViews remoteviews = new RemoteViews(context.getPackageName(), 0x7f030000);
        remoteviews.setOnClickPendingIntent(0x7f070001, pendingintent);
        remoteviews.setOnClickPendingIntent(0x7f070004, pendingintent2);
        remoteviews.setOnClickPendingIntent(0x7f070003, pendingintent3);
        remoteviews.setOnClickPendingIntent(0x7f070000, pendingintent1);
        appwidgetmanager.updateAppWidget(ai, remoteviews);
    }
}
