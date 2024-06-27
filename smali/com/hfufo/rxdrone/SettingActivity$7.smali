.class Lcom/hfufo/rxdrone/SettingActivity$7;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hfufo/rxdrone/SettingActivity;->initUdateView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hfufo/rxdrone/SettingActivity;


# direct methods
.method constructor <init>(Lcom/hfufo/rxdrone/SettingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hfufo/rxdrone/SettingActivity;

    .prologue
    .line 355
    iput-object p1, p0, Lcom/hfufo/rxdrone/SettingActivity$7;->this$0:Lcom/hfufo/rxdrone/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 358
    iget-object v0, p0, Lcom/hfufo/rxdrone/SettingActivity$7;->this$0:Lcom/hfufo/rxdrone/SettingActivity;

    iget-object v0, v0, Lcom/hfufo/rxdrone/SettingActivity;->mApplication:Lcom/hfufo/rxdrone/MainApplication;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 359
    return-void
.end method
