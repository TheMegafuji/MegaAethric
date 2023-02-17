.class public interface abstract Lcom/koushikdutta/async/DataTrackingEmitter;
.super Ljava/lang/Object;
.source "DataTrackingEmitter.java"

# interfaces
.implements Lcom/koushikdutta/async/DataEmitter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/koushikdutta/async/DataTrackingEmitter$DataTracker;
    }
.end annotation


# virtual methods
.method public abstract getBytesRead()I
.end method

.method public abstract getDataTracker()Lcom/koushikdutta/async/DataTrackingEmitter$DataTracker;
.end method

.method public abstract setDataEmitter(Lcom/koushikdutta/async/DataEmitter;)V
.end method

.method public abstract setDataTracker(Lcom/koushikdutta/async/DataTrackingEmitter$DataTracker;)V
.end method
