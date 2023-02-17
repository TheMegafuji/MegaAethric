.class interface abstract Lcom/koushikdutta/async/util/TimeoutBase$Handlerish;
.super Ljava/lang/Object;
.source "TimeoutBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/util/TimeoutBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Handlerish"
.end annotation


# virtual methods
.method public abstract post(Ljava/lang/Runnable;)V
.end method

.method public abstract postDelayed(Ljava/lang/Runnable;J)Ljava/lang/Object;
.end method

.method public abstract removeAllCallbacks(Ljava/lang/Object;)V
.end method
