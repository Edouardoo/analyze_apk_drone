.class public interface abstract annotation Lcom/micro/view/annotation/event/OnScroll;
.super Ljava/lang/Object;
.source "OnScroll.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Lcom/micro/view/annotation/event/EventBase;
    listenerSetter = "setOnScrollListener"
    listenerType = Landroid/widget/AbsListView$OnScrollListener;
    methodName = "onScroll"
.end annotation

.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/micro/view/annotation/event/OnScroll;
        parentId = {
            0x0
        }
    .end subannotation
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
.method public abstract parentId()[I
.end method

.method public abstract value()[I
.end method
