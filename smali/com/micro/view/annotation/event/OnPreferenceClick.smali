.class public interface abstract annotation Lcom/micro/view/annotation/event/OnPreferenceClick;
.super Ljava/lang/Object;
.source "OnPreferenceClick.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Lcom/micro/view/annotation/event/EventBase;
    listenerSetter = "setOnPreferenceClickListener"
    listenerType = Landroid/preference/Preference$OnPreferenceClickListener;
    methodName = "onPreferenceClick"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract value()[Ljava/lang/String;
.end method
