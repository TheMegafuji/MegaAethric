.class Lcom/avalon/rpg/Index$8;
.super Ljava/lang/Object;
.source "Index.java"

# interfaces
.implements Lcom/android/billingclient/api/PurchasesUpdatedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avalon/rpg/Index;->onConnected(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avalon/rpg/Index;


# direct methods
.method constructor <init>(Lcom/avalon/rpg/Index;)V
    .locals 0

    .line 475
    iput-object p1, p0, Lcom/avalon/rpg/Index$8;->this$0:Lcom/avalon/rpg/Index;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    .line 478
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    .line 480
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/billingclient/api/Purchase;

    .line 481
    iget-object v0, p0, Lcom/avalon/rpg/Index$8;->this$0:Lcom/avalon/rpg/Index;

    invoke-virtual {v0, p2}, Lcom/avalon/rpg/Index;->handlePurchase(Lcom/android/billingclient/api/Purchase;)V

    goto :goto_0

    .line 485
    :cond_0
    iget-object p1, p0, Lcom/avalon/rpg/Index$8;->this$0:Lcom/avalon/rpg/Index;

    invoke-static {p1}, Lcom/avalon/rpg/Index;->access$000(Lcom/avalon/rpg/Index;)Landroid/webkit/WebView;

    move-result-object p1

    const-string p2, "javascript:window.appinterface.unblockUI()"

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
