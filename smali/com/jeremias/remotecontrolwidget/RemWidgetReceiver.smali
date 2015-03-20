.class public Lcom/jeremias/remotecontrolwidget/RemWidgetReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RemWidgetReceiver.java"


# static fields
.field private static camera:Landroid/hardware/Camera;

.field private static isLightOn:Z


# instance fields
.field mCIR:Landroid/hardware/ConsumerIrManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-boolean v0, Lcom/jeremias/remotecontrolwidget/RemWidgetReceiver;->isLightOn:Z

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected hex2dec(Ljava/lang/String;)[I
    .locals 8
    .parameter "irData"

    .prologue
    const/16 v7, 0x10

    const/4 v6, 0x0

    .line 69
    new-instance v3, Ljava/util/ArrayList;

    const-string v5, " "

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 70
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 71
    invoke-interface {v3, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 72
    .local v1, frequency:I
    invoke-interface {v3, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 73
    invoke-interface {v3, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 75
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lt v2, v5, :cond_0

    .line 82
    const-string p1, ""

    .line 83
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 86
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    new-array v0, v5, [I

    .line 87
    .local v0, array:[I
    const/4 v2, 0x0

    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lt v2, v5, :cond_2

    .line 90
    return-object v0

    .line 76
    .end local v0           #array:[I
    :cond_0
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v2, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 75
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 83
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 84
    .local v4, s:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 88
    .end local v4           #s:Ljava/lang/String;
    .restart local v0       #array:[I
    :cond_2
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v0, v2

    .line 87
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const v5, 0x948c

    .line 26
    new-instance v2, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/high16 v4, 0x7f03

    invoke-direct {v2, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 28
    .local v2, views:Landroid/widget/RemoteViews;
    const-string v3, "consumer_ir"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/ConsumerIrManager;

    iput-object v3, p0, Lcom/jeremias/remotecontrolwidget/RemWidgetReceiver;->mCIR:Landroid/hardware/ConsumerIrManager;

    .line 30
    iget-object v3, p0, Lcom/jeremias/remotecontrolwidget/RemWidgetReceiver;->mCIR:Landroid/hardware/ConsumerIrManager;

    invoke-virtual {v3}, Landroid/hardware/ConsumerIrManager;->hasIrEmitter()Z

    move-result v3

    if-nez v3, :cond_0

    .line 31
    const-string v3, "IR"

    const-string v4, "No IR Emitter found\n"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :goto_0
    return-void

    .line 37
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "COM_FLASHLIGHT"

    if-ne v3, v4, :cond_2

    .line 38
    const-string v3, "0000 006D 0022 0002 0155 00AA 0015 0040 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0040 0015 0040 0015 0040 0015 0040 0015 0040 0015 0040 0015 0040 0015 0015 0015 0040 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0040 0015 0015 0015 0040 0015 0040 0015 0040 0015 0040 0015 0040 0015 0040 0015 05ED 0155 0055 0015 0E47"

    invoke-virtual {p0, v3}, Lcom/jeremias/remotecontrolwidget/RemWidgetReceiver;->hex2dec(Ljava/lang/String;)[I

    move-result-object v1

    .line 39
    .local v1, pattern:[I
    iget-object v3, p0, Lcom/jeremias/remotecontrolwidget/RemWidgetReceiver;->mCIR:Landroid/hardware/ConsumerIrManager;

    invoke-virtual {v3, v5, v1}, Landroid/hardware/ConsumerIrManager;->transmit(I[I)V

    .line 57
    .end local v1           #pattern:[I
    :cond_1
    :goto_1
    const-string v3, "IR"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 61
    .local v0, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    new-instance v3, Landroid/content/ComponentName;

    const-class v4, Lcom/jeremias/remotecontrolwidget/Main;

    invoke-direct {v3, p1, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v3, v2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 63
    const-string v3, "System.out"

    const-string v4, "Hello1111!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 41
    .end local v0           #appWidgetManager:Landroid/appwidget/AppWidgetManager;
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "COM_SOURCE"

    if-ne v3, v4, :cond_3

    .line 42
    const-string v3, "0000 006D 0022 0002 0155 00AA 0015 0040 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0040 0015 0040 0015 0040 0015 0040 0015 0040 0015 0040 0015 0040 0015 0040 0015 0015 0015 0040 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0040 0015 0015 0015 0040 0015 0040 0015 0040 0015 0040 0015 0040 0015 05ED 0155 0055 0015 0E47"

    invoke-virtual {p0, v3}, Lcom/jeremias/remotecontrolwidget/RemWidgetReceiver;->hex2dec(Ljava/lang/String;)[I

    move-result-object v1

    .line 43
    .restart local v1       #pattern:[I
    iget-object v3, p0, Lcom/jeremias/remotecontrolwidget/RemWidgetReceiver;->mCIR:Landroid/hardware/ConsumerIrManager;

    invoke-virtual {v3, v5, v1}, Landroid/hardware/ConsumerIrManager;->transmit(I[I)V

    goto :goto_1

    .line 45
    .end local v1           #pattern:[I
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "COM_VOLUP"

    if-ne v3, v4, :cond_4

    .line 46
    const-string v3, "0000 006D 0022 0002 0155 00AA 0015 0040 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0040 0015 0040 0015 0040 0015 0040 0015 0040 0015 0040 0015 0040 0015 0040 0015 0040 0015 0040 0015 0040 0015 0040 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0040 0015 0040 0015 0040 0015 05ED 0155 0055 0015 0E47"

    invoke-virtual {p0, v3}, Lcom/jeremias/remotecontrolwidget/RemWidgetReceiver;->hex2dec(Ljava/lang/String;)[I

    move-result-object v1

    .line 47
    .restart local v1       #pattern:[I
    iget-object v3, p0, Lcom/jeremias/remotecontrolwidget/RemWidgetReceiver;->mCIR:Landroid/hardware/ConsumerIrManager;

    invoke-virtual {v3, v5, v1}, Landroid/hardware/ConsumerIrManager;->transmit(I[I)V

    goto :goto_1

    .line 49
    .end local v1           #pattern:[I
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "COM_VOLDOWN"

    if-ne v3, v4, :cond_5

    .line 50
    const-string v3, "0000 006D 0022 0002 0155 00AA 0015 0040 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0040 0015 0040 0015 0040 0015 0040 0015 0040 0015 0040 0015 0040 0015 0015 0015 0040 0015 0040 0015 0040 0015 0040 0015 0015 0015 0015 0015 0015 0015 0040 0015 0015 0015 0015 0015 0015 0015 0015 0015 0040 0015 0040 0015 0040 0015 05ED 0155 0055 0015 0E47"

    invoke-virtual {p0, v3}, Lcom/jeremias/remotecontrolwidget/RemWidgetReceiver;->hex2dec(Ljava/lang/String;)[I

    move-result-object v1

    .line 51
    .restart local v1       #pattern:[I
    iget-object v3, p0, Lcom/jeremias/remotecontrolwidget/RemWidgetReceiver;->mCIR:Landroid/hardware/ConsumerIrManager;

    invoke-virtual {v3, v5, v1}, Landroid/hardware/ConsumerIrManager;->transmit(I[I)V

    goto :goto_1

    .line 53
    .end local v1           #pattern:[I
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "COM_MUTE"

    if-ne v3, v4, :cond_1

    .line 54
    const-string v3, "0000 006D 0022 0002 0155 00AA 0015 0040 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0040 0015 0040 0015 0040 0015 0040 0015 0040 0015 0040 0015 0040 0015 0040 0015 0015 0015 0015 0015 0040 0015 0040 0015 0015 0015 0015 0015 0015 0015 0015 0015 0040 0015 0040 0015 0015 0015 0015 0015 0040 0015 0040 0015 0040 0015 05ED 0155 0055 0015 0E47"

    invoke-virtual {p0, v3}, Lcom/jeremias/remotecontrolwidget/RemWidgetReceiver;->hex2dec(Ljava/lang/String;)[I

    move-result-object v1

    .line 55
    .restart local v1       #pattern:[I
    iget-object v3, p0, Lcom/jeremias/remotecontrolwidget/RemWidgetReceiver;->mCIR:Landroid/hardware/ConsumerIrManager;

    invoke-virtual {v3, v5, v1}, Landroid/hardware/ConsumerIrManager;->transmit(I[I)V

    goto :goto_1
.end method
