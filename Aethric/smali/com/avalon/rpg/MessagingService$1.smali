.class Lcom/avalon/rpg/MessagingService$1;
.super Ljava/lang/Object;
.source "MessagingService.java"

# interfaces
.implements Lcom/koushikdutta/async/future/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avalon/rpg/MessagingService;->onNewToken(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/koushikdutta/async/future/FutureCallback<",
        "Lcom/google/gson/JsonObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avalon/rpg/MessagingService;


# direct methods
.method constructor <init>(Lcom/avalon/rpg/MessagingService;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/avalon/rpg/MessagingService$1;->this$0:Lcom/avalon/rpg/MessagingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/lang/Exception;Lcom/google/gson/JsonObject;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onCompleted(Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 0

    .line 42
    check-cast p2, Lcom/google/gson/JsonObject;

    invoke-virtual {p0, p1, p2}, Lcom/avalon/rpg/MessagingService$1;->onCompleted(Ljava/lang/Exception;Lcom/google/gson/JsonObject;)V

    return-void
.end method
