.class public Lcom/avalon/rpg/OrnaApplication;
.super Landroid/app/Application;
.source "OrnaApplication.java"


# static fields
.field private static instance:Lcom/avalon/rpg/OrnaApplication;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 22
    sput-object p0, Lcom/avalon/rpg/OrnaApplication;->instance:Lcom/avalon/rpg/OrnaApplication;

    return-void
.end method

.method public static get()Lcom/avalon/rpg/OrnaApplication;
    .locals 1

    .line 26
    sget-object v0, Lcom/avalon/rpg/OrnaApplication;->instance:Lcom/avalon/rpg/OrnaApplication;

    return-object v0
.end method


# virtual methods
.method public getPublicKey()Ljava/lang/String;
    .locals 2

    const-string v0, ""

    const-string v1, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAlpcsenbfhTIQUhe35+a/RgcR3HVMkEWFUl0B9iE3nJ3Tf7szzkuOcmuXv63xxHpgxF1vvL0PS1oDqjqDgPGTropfeYxIoOzxBdBClriGj9kb/DczFxMpjsz1laCD3+VX8n/DpjsVx/MJqkMX6gC"

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "wLEgVn4uPmf/J43pZqhI6QMZgFUvcnJu2PykwOPlPyDhVNNFdALE8qJsgV+MdXGOJm7vSispf1xtGWZ4pe3hnoeBocX"

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "L4fiumrhlXIzK7rkS77dZdLvRXtHJMPkEpVHF9i9vwMy4QrP/nEAqzfzJjlJW61xiwQEW6GD6B6pIhdJkWopjCM5xRsPa2hiRjO5kUgQIDAQAB"

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
