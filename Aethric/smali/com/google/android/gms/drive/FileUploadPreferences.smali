.class public interface abstract Lcom/google/android/gms/drive/FileUploadPreferences;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final BATTERY_USAGE_CHARGING_ONLY:I = 0x101

.field public static final BATTERY_USAGE_UNRESTRICTED:I = 0x100

.field public static final NETWORK_TYPE_ANY:I = 0x1

.field public static final NETWORK_TYPE_WIFI_ONLY:I = 0x2

.field public static final PREFERENCE_VALUE_UNKNOWN:I


# virtual methods
.method public abstract getBatteryUsagePreference()I
.end method

.method public abstract getNetworkTypePreference()I
.end method

.method public abstract isRoamingAllowed()Z
.end method

.method public abstract setBatteryUsagePreference(I)V
.end method

.method public abstract setNetworkTypePreference(I)V
.end method

.method public abstract setRoamingAllowed(Z)V
.end method
