.class Lcom/avalon/rpg/Index$7$1;
.super Ljava/lang/Object;
.source "Index.java"

# interfaces
.implements Lcom/android/billingclient/api/ConsumeResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avalon/rpg/Index$7;->onCompleted(Ljava/lang/Exception;Lcom/google/gson/JsonObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/avalon/rpg/Index$7;

.field final synthetic val$uuid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/avalon/rpg/Index$7;Ljava/lang/String;)V
    .locals 0

    .line 433
    iput-object p1, p0, Lcom/avalon/rpg/Index$7$1;->this$1:Lcom/avalon/rpg/Index$7;

    iput-object p2, p0, Lcom/avalon/rpg/Index$7$1;->val$uuid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsumeResponse(Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V
    .locals 0

    .line 436
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    if-nez p1, :cond_0

    .line 437
    iget-object p1, p0, Lcom/avalon/rpg/Index$7$1;->this$1:Lcom/avalon/rpg/Index$7;

    iget-object p1, p1, Lcom/avalon/rpg/Index$7;->this$0:Lcom/avalon/rpg/Index;

    new-instance p2, Lcom/avalon/rpg/Index$7$1$1;

    invoke-direct {p2, p0}, Lcom/avalon/rpg/Index$7$1$1;-><init>(Lcom/avalon/rpg/Index$7$1;)V

    invoke-virtual {p1, p2}, Lcom/avalon/rpg/Index;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
