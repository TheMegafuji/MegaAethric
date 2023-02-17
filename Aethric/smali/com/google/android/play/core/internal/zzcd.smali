.class public final Lcom/google/android/play/core/internal/zzcd;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"


# direct methods
.method public static zza(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;I)V
    .locals 10

    .line 1
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_6

    const/4 v1, 0x2

    if-eq p2, v1, :cond_5

    .line 2
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x204

    .line 3
    :try_start_0
    invoke-virtual {p0, p2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p2

    const/4 v3, 0x3

    new-array v4, v3, [[Landroid/content/pm/ComponentInfo;

    .line 4
    iget-object v5, p2, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    iget-object v5, p2, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    aput-object v5, v4, v0

    iget-object p2, p2, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    aput-object p2, v4, v1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, v3, :cond_3

    .line 5
    aget-object v1, v4, p2

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    array-length v5, v1

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v5, :cond_2

    .line 6
    aget-object v8, v1, v7

    .line 7
    iget-object v9, v8, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_3

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    const/4 v8, 0x0

    :goto_3
    if-nez v8, :cond_4

    goto :goto_4

    .line 8
    :cond_4
    invoke-virtual {v8}, Landroid/content/pm/ComponentInfo;->isEnabled()Z

    move-result p2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p2, :cond_5

    goto :goto_5

    .line 9
    :catch_0
    :cond_5
    :goto_4
    invoke-virtual {p0, p1, v0, v0}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    :cond_6
    :goto_5
    return-void
.end method
