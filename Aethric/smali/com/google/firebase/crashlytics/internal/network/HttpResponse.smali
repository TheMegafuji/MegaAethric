.class public Lcom/google/firebase/crashlytics/internal/network/HttpResponse;
.super Ljava/lang/Object;
.source "HttpResponse.java"


# instance fields
.field private final body:Ljava/lang/String;

.field private final code:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lcom/google/firebase/crashlytics/internal/network/HttpResponse;->code:I

    .line 23
    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/network/HttpResponse;->body:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public body()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/network/HttpResponse;->body:Ljava/lang/String;

    return-object v0
.end method

.method public code()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/google/firebase/crashlytics/internal/network/HttpResponse;->code:I

    return v0
.end method
