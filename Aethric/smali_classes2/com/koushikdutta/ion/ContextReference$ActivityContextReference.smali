.class public Lcom/koushikdutta/ion/ContextReference$ActivityContextReference;
.super Lcom/koushikdutta/ion/ContextReference$NormalContextReference;
.source "ContextReference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/ion/ContextReference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActivityContextReference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/koushikdutta/ion/ContextReference$NormalContextReference<",
        "Landroid/app/Activity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcom/koushikdutta/ion/ContextReference$NormalContextReference;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static isAlive(Landroid/app/Activity;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, "Activity reference null"

    return-object p0

    .line 76
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "Activity finished"

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getContext()Landroid/content/Context;
    .locals 1

    .line 68
    invoke-super {p0}, Lcom/koushikdutta/ion/ContextReference$NormalContextReference;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public isAlive()Ljava/lang/String;
    .locals 1

    .line 83
    invoke-virtual {p0}, Lcom/koushikdutta/ion/ContextReference$ActivityContextReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/koushikdutta/ion/ContextReference$ActivityContextReference;->isAlive(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
