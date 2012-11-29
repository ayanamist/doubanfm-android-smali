.class Lfm/douban/service/Radio$2;
.super Ljava/lang/Object;
.source "Radio.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfm/douban/service/Radio;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lfm/douban/service/Radio;


# direct methods
.method constructor <init>(Lfm/douban/service/Radio;)V
    .locals 0
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lfm/douban/service/Radio$2;->this$0:Lfm/douban/service/Radio;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 3
    .parameter "focusChange"

    .prologue
    const/4 v2, 0x4

    .line 139
    packed-switch p1, :pswitch_data_0

    .line 172
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 142
    :pswitch_1
    const-string v0, "radio"

    const-string v1, "Audiofocus loss, pause manual."

    invoke-static {v0, v1}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v0, p0, Lfm/douban/service/Radio$2;->this$0:Lfm/douban/service/Radio;

    invoke-virtual {v0, v2}, Lfm/douban/service/Radio;->pause(I)V

    goto :goto_0

    .line 147
    :pswitch_2
    const-string v0, "radio"

    const-string v1, "Audiofocus loss transitent, pause manual."

    invoke-static {v0, v1}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v0, p0, Lfm/douban/service/Radio$2;->this$0:Lfm/douban/service/Radio;

    invoke-virtual {v0, v2}, Lfm/douban/service/Radio;->pause(I)V

    goto :goto_0

    .line 152
    :pswitch_3
    iget-object v0, p0, Lfm/douban/service/Radio$2;->this$0:Lfm/douban/service/Radio;

    iget-object v0, v0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iget-boolean v0, v0, Lfm/douban/service/RadioState;->isPaused:Z

    if-nez v0, :cond_0

    .line 153
    const-string v0, "radio"

    const-string v1, "Audiofocus loss transitent duck, set volumen to 0.1f."

    invoke-static {v0, v1}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v0, p0, Lfm/douban/service/Radio$2;->this$0:Lfm/douban/service/Radio;

    #getter for: Lfm/douban/service/Radio;->player:Lfm/douban/service/Player;
    invoke-static {v0}, Lfm/douban/service/Radio;->access$100(Lfm/douban/service/Radio;)Lfm/douban/service/Player;

    move-result-object v0

    const v1, 0x3dcccccd

    invoke-virtual {v0, v1}, Lfm/douban/service/Player;->setVolume(F)V

    goto :goto_0

    .line 159
    :pswitch_4
    const-string v0, "radio"

    const-string v1, "Audiofocus gain, set volume to 1.0f, resume."

    invoke-static {v0, v1}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v0, p0, Lfm/douban/service/Radio$2;->this$0:Lfm/douban/service/Radio;

    invoke-virtual {v0, v2}, Lfm/douban/service/Radio;->resume(I)V

    .line 161
    iget-object v0, p0, Lfm/douban/service/Radio$2;->this$0:Lfm/douban/service/Radio;

    iget-object v0, v0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iget-boolean v0, v0, Lfm/douban/service/RadioState;->isPaused:Z

    if-nez v0, :cond_0

    .line 162
    iget-object v0, p0, Lfm/douban/service/Radio$2;->this$0:Lfm/douban/service/Radio;

    #getter for: Lfm/douban/service/Radio;->player:Lfm/douban/service/Player;
    invoke-static {v0}, Lfm/douban/service/Radio;->access$100(Lfm/douban/service/Radio;)Lfm/douban/service/Player;

    move-result-object v0

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lfm/douban/service/Player;->setVolume(F)V

    goto :goto_0

    .line 167
    :pswitch_5
    const-string v0, "radio"

    const-string v1, "Audiofocus gain transient, resume"

    invoke-static {v0, v1}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v0, p0, Lfm/douban/service/Radio$2;->this$0:Lfm/douban/service/Radio;

    invoke-virtual {v0, v2}, Lfm/douban/service/Radio;->resume(I)V

    goto :goto_0

    .line 139
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
