.class public Lcom/jeremias/remotecontrolwidget/Main;
.super Landroid/appwidget/AppWidgetProvider;
.source "Main.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 15
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 20
    new-instance v8, Landroid/content/Intent;

    const-class v13, Lcom/jeremias/remotecontrolwidget/RemWidgetReceiver;

    move-object/from16 v0, p1

    invoke-direct {v8, v0, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 21
    .local v8, power:Landroid/content/Intent;
    new-instance v2, Landroid/content/Intent;

    const-class v13, Lcom/jeremias/remotecontrolwidget/RemWidgetReceiver;

    move-object/from16 v0, p1

    invoke-direct {v2, v0, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 22
    .local v2, mute:Landroid/content/Intent;
    new-instance v12, Landroid/content/Intent;

    const-class v13, Lcom/jeremias/remotecontrolwidget/RemWidgetReceiver;

    move-object/from16 v0, p1

    invoke-direct {v12, v0, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 23
    .local v12, volUp:Landroid/content/Intent;
    new-instance v11, Landroid/content/Intent;

    const-class v13, Lcom/jeremias/remotecontrolwidget/RemWidgetReceiver;

    move-object/from16 v0, p1

    invoke-direct {v11, v0, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 24
    .local v11, volDown:Landroid/content/Intent;
    new-instance v9, Landroid/content/Intent;

    const-class v13, Lcom/jeremias/remotecontrolwidget/RemWidgetReceiver;

    move-object/from16 v0, p1

    invoke-direct {v9, v0, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 26
    .local v9, source:Landroid/content/Intent;
    const-string v13, "COM_FLASHLIGHT"

    invoke-virtual {v8, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    const-string v13, "COM_MUTE"

    invoke-virtual {v2, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    const-string v13, "COM_VOLUP"

    invoke-virtual {v12, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    const-string v13, "COM_VOLDOWN"

    invoke-virtual {v11, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    const-string v13, "COM_SOURCE"

    invoke-virtual {v9, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    const-string v13, "System.out"

    const-string v14, "Hello!"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    const-string v13, "appWidgetIds"

    move-object/from16 v0, p3

    invoke-virtual {v8, v13, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 35
    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v13, v8, v14}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 36
    .local v3, pendingIntent:Landroid/app/PendingIntent;
    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v13, v9, v14}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 37
    .local v4, pendingIntent2:Landroid/app/PendingIntent;
    const/4 v13, 0x2

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v13, v12, v14}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 38
    .local v5, pendingIntent3:Landroid/app/PendingIntent;
    const/4 v13, 0x3

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v13, v11, v14}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 39
    .local v6, pendingIntent4:Landroid/app/PendingIntent;
    const/4 v13, 0x5

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v13, v2, v14}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 42
    .local v7, pendingIntent5:Landroid/app/PendingIntent;
    new-instance v10, Landroid/widget/RemoteViews;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    .line 43
    const/high16 v14, 0x7f03

    .line 42
    invoke-direct {v10, v13, v14}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 44
    .local v10, views:Landroid/widget/RemoteViews;
    const v13, 0x7f070001

    invoke-virtual {v10, v13, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 46
    const v13, 0x7f070004

    invoke-virtual {v10, v13, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 47
    const v13, 0x7f070003

    invoke-virtual {v10, v13, v6}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 48
    const/high16 v13, 0x7f07

    invoke-virtual {v10, v13, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 50
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v10}, Landroid/appwidget/AppWidgetManager;->updateAppWidget([ILandroid/widget/RemoteViews;)V

    .line 52
    return-void
.end method
