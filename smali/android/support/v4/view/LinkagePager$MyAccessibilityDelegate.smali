.class Landroid/support/v4/view/LinkagePager$MyAccessibilityDelegate;
.super Landroid/support/v4/view/AccessibilityDelegateCompat;
.source "LinkagePager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/LinkagePager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyAccessibilityDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/view/LinkagePager;


# direct methods
.method constructor <init>(Landroid/support/v4/view/LinkagePager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v4/view/LinkagePager;

    .prologue
    .line 2927
    iput-object p1, p0, Landroid/support/v4/view/LinkagePager$MyAccessibilityDelegate;->this$0:Landroid/support/v4/view/LinkagePager;

    invoke-direct {p0}, Landroid/support/v4/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method

.method private canScroll()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2980
    iget-object v1, p0, Landroid/support/v4/view/LinkagePager$MyAccessibilityDelegate;->this$0:Landroid/support/v4/view/LinkagePager;

    invoke-static {v1}, Landroid/support/v4/view/LinkagePager;->access$200(Landroid/support/v4/view/LinkagePager;)Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v4/view/LinkagePager$MyAccessibilityDelegate;->this$0:Landroid/support/v4/view/LinkagePager;

    invoke-static {v1}, Landroid/support/v4/view/LinkagePager;->access$200(Landroid/support/v4/view/LinkagePager;)Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 2931
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2932
    const-class v1, Landroid/support/v4/view/LinkagePager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 2934
    invoke-static {p2}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat;->asRecord(Landroid/view/accessibility/AccessibilityEvent;)Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    move-result-object v0

    .line 2935
    .local v0, "recordCompat":Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;
    invoke-direct {p0}, Landroid/support/v4/view/LinkagePager$MyAccessibilityDelegate;->canScroll()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setScrollable(Z)V

    .line 2936
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    const/16 v2, 0x1000

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/support/v4/view/LinkagePager$MyAccessibilityDelegate;->this$0:Landroid/support/v4/view/LinkagePager;

    .line 2937
    invoke-static {v1}, Landroid/support/v4/view/LinkagePager;->access$200(Landroid/support/v4/view/LinkagePager;)Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2938
    iget-object v1, p0, Landroid/support/v4/view/LinkagePager$MyAccessibilityDelegate;->this$0:Landroid/support/v4/view/LinkagePager;

    invoke-static {v1}, Landroid/support/v4/view/LinkagePager;->access$200(Landroid/support/v4/view/LinkagePager;)Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setItemCount(I)V

    .line 2939
    iget-object v1, p0, Landroid/support/v4/view/LinkagePager$MyAccessibilityDelegate;->this$0:Landroid/support/v4/view/LinkagePager;

    invoke-static {v1}, Landroid/support/v4/view/LinkagePager;->access$300(Landroid/support/v4/view/LinkagePager;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setFromIndex(I)V

    .line 2940
    iget-object v1, p0, Landroid/support/v4/view/LinkagePager$MyAccessibilityDelegate;->this$0:Landroid/support/v4/view/LinkagePager;

    invoke-static {v1}, Landroid/support/v4/view/LinkagePager;->access$300(Landroid/support/v4/view/LinkagePager;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setToIndex(I)V

    .line 2942
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 2
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .prologue
    .line 2946
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 2947
    const-class v0, Landroid/support/v4/view/LinkagePager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 2948
    invoke-direct {p0}, Landroid/support/v4/view/LinkagePager$MyAccessibilityDelegate;->canScroll()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    .line 2949
    iget-object v0, p0, Landroid/support/v4/view/LinkagePager$MyAccessibilityDelegate;->this$0:Landroid/support/v4/view/LinkagePager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/LinkagePager;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2950
    const/16 v0, 0x1000

    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 2952
    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/LinkagePager$MyAccessibilityDelegate;->this$0:Landroid/support/v4/view/LinkagePager;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/LinkagePager;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2953
    const/16 v0, 0x2000

    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 2955
    :cond_1
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 4
    .param p1, "host"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2959
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2976
    :goto_0
    return v0

    .line 2962
    :cond_0
    sparse-switch p2, :sswitch_data_0

    move v0, v1

    .line 2976
    goto :goto_0

    .line 2964
    :sswitch_0
    iget-object v2, p0, Landroid/support/v4/view/LinkagePager$MyAccessibilityDelegate;->this$0:Landroid/support/v4/view/LinkagePager;

    invoke-virtual {v2, v0}, Landroid/support/v4/view/LinkagePager;->canScrollHorizontally(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2965
    iget-object v1, p0, Landroid/support/v4/view/LinkagePager$MyAccessibilityDelegate;->this$0:Landroid/support/v4/view/LinkagePager;

    iget-object v2, p0, Landroid/support/v4/view/LinkagePager$MyAccessibilityDelegate;->this$0:Landroid/support/v4/view/LinkagePager;

    invoke-static {v2}, Landroid/support/v4/view/LinkagePager;->access$300(Landroid/support/v4/view/LinkagePager;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v4/view/LinkagePager;->setCurrentItem(I)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 2968
    goto :goto_0

    .line 2970
    :sswitch_1
    iget-object v2, p0, Landroid/support/v4/view/LinkagePager$MyAccessibilityDelegate;->this$0:Landroid/support/v4/view/LinkagePager;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/support/v4/view/LinkagePager;->canScrollHorizontally(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2971
    iget-object v1, p0, Landroid/support/v4/view/LinkagePager$MyAccessibilityDelegate;->this$0:Landroid/support/v4/view/LinkagePager;

    iget-object v2, p0, Landroid/support/v4/view/LinkagePager$MyAccessibilityDelegate;->this$0:Landroid/support/v4/view/LinkagePager;

    invoke-static {v2}, Landroid/support/v4/view/LinkagePager;->access$300(Landroid/support/v4/view/LinkagePager;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Landroid/support/v4/view/LinkagePager;->setCurrentItem(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 2974
    goto :goto_0

    .line 2962
    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
    .end sparse-switch
.end method
