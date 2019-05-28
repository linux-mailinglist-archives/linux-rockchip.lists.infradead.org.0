Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D17322C3E6
	for <lists+linux-rockchip@lfdr.de>; Tue, 28 May 2019 12:05:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=32Nz+aRZvluSkHXnucs7+NtK2b3bojOpJh9BEfh0DPE=; b=iuqLM2VG6EcRnD
	4lQ0Tga0+fb4AtrLU3FgQhYz+VmK/JfA9x3p6PamJ4XfyUzIwMaYIk0UORH7ntqC9a7g6qDFpefoW
	/i8iJ9jUYmriI2LQxmhk9T14hGoOMprc01l1jJOmOr0kI/H4TX3xqS0jTvvQ3lI+hioHfvjs9SxYw
	G2efHRlsTRyAo3x73opmheGwG5jWeT+XzFkVMsdJefrD1EdYwZjfz/TDWIboGCRlbAJK2Cg2F7KU1
	3lS7gEs0rm3qQ5R3Mbfn0MtJu/yRBh84m19srcoicUoV2LnwlqjlffvDhjd3Cfv1JY4c79BOvvWgT
	ddIqE0Qdud68Ed2qilzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVYyu-0005Fh-0O; Tue, 28 May 2019 10:05:20 +0000
Received: from mga05.intel.com ([192.55.52.43])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVYyq-0005Eh-GV
 for linux-rockchip@lists.infradead.org; Tue, 28 May 2019 10:05:18 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 May 2019 03:05:15 -0700
X-ExtLoop1: 1
Received: from ahunter-desktop.fi.intel.com (HELO [10.237.72.198])
 ([10.237.72.198])
 by fmsmga006.fm.intel.com with ESMTP; 28 May 2019 03:05:11 -0700
Subject: Re: [PATCH 2/3] mmc: core: API for temporarily disabling
 auto-retuning due to errors
To: Arend Van Spriel <arend.vanspriel@broadcom.com>,
 Douglas Anderson <dianders@chromium.org>,
 Ulf Hansson <ulf.hansson@linaro.org>, Kalle Valo <kvalo@codeaurora.org>
References: <20190517225420.176893-1-dianders@chromium.org>
 <20190517225420.176893-3-dianders@chromium.org>
 <05af228c-139b-2b7f-f626-36fb34634be5@broadcom.com>
From: Adrian Hunter <adrian.hunter@intel.com>
Organization: Intel Finland Oy, Registered Address: PL 281, 00181 Helsinki,
 Business Identity Code: 0357606 - 4, Domiciled in Helsinki
Message-ID: <4f39e152-04ba-a64e-985a-df93e6d15ff8@intel.com>
Date: Tue, 28 May 2019 13:04:56 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <05af228c-139b-2b7f-f626-36fb34634be5@broadcom.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_030516_562274_FD0F6CF5 
X-CRM114-Status: GOOD (  15.52  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.43 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: Madhan Mohan R <madhanmohan.r@cypress.com>,
 Ritesh Harjani <riteshh@codeaurora.org>, Martin Hicks <mort@bork.org>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>,
 Chi-Hsien Lin <chi-hsien.lin@cypress.com>, briannorris@chromium.org,
 linux-mmc@vger.kernel.org, Double Lo <double.lo@cypress.com>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Avri Altman <avri.altman@wdc.com>, mka@chromium.org,
 Wright Feng <wright.feng@cypress.com>, Jiong Wu <lohengrin1024@gmail.com>,
 Shawn Lin <shawn.lin@rock-chips.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

T24gMjYvMDUvMTkgOTo0MiBQTSwgQXJlbmQgVmFuIFNwcmllbCB3cm90ZToKPiBPbiA1LzE4LzIw
MTkgMTI6NTQgQU0sIERvdWdsYXMgQW5kZXJzb24gd3JvdGU6Cj4+IE5vcm1hbGx5IHdoZW4gdGhl
IE1NQyBjb3JlIHNlZXMgYW4gIi1FSUxTRVEiIGVycm9yIHJldHVybmVkIGJ5IGEgaG9zdAo+PiBj
b250cm9sbGVyIHRoZW4gaXQgd2lsbCB0cmlnZ2VyIGEgcmV0dW5pbmcgb2YgdGhlIGNhcmQuwqAg
VGhpcyBpcwo+PiBnZW5lcmFsbHkgYSBnb29kIGlkZWEuCj4gCj4gUHJvYmFibHkgYSBxdWVzdGlv
biBmb3IgQWRyaWFuLCBidXQgaG93IGlzIHRoaXMgcmV0dW5pbmcgc2NoZWR1bGVkLiBJIHJlY2Fs
bAo+IHNlZWluZyBzb21ldGhpbmcgaW4gbW1jX3JlcXVlc3RfZG9uZS4gSG93IGFib3V0IGRlZmVy
cmluZyB0aGUgcmV0dW5pbmcgdXBvbgo+IGEgcmVsZWFzZSBob3N0IG9yIGlzIHRoYXQgdG9vIHNk
aW8gc3BlY2lmaWMuCgpCZWxvdyBpcyB3aGF0IEkgaGF2ZSBiZWVuIGNhcnJ5aW5nIHRoZSBsYXN0
IDQgeWVhcnMuICBCdXQgYWNjb3JkaW5nIHRvIERvdWdsYXMnCnBhdGNoLCB0aGUgcmVsZWFzZSB3
b3VsZCBuZWVkIHRvIGJlIGZ1cnRoZXIgZG93bi4gIFNlZSAybmQgZGlmZiBiZWxvdy4KV291bGQg
dGhhdCB3b3JrPwoKCmRpZmYgLS1naXQgYS9kcml2ZXJzL21tYy9jb3JlL3NkaW9faW8uYyBiL2Ry
aXZlcnMvbW1jL2NvcmUvc2Rpb19pby5jCmluZGV4IDNmNjdmYmJlMGQ3NS4uN2E4MWE1MDM1NDFi
IDEwMDY0NAotLS0gYS9kcml2ZXJzL21tYy9jb3JlL3NkaW9faW8uYworKysgYi9kcml2ZXJzL21t
Yy9jb3JlL3NkaW9faW8uYwpAQCAtMTYsNiArMTYsNyBAQAogI2luY2x1ZGUgPGxpbnV4L21tYy9z
ZGlvLmg+CiAjaW5jbHVkZSA8bGludXgvbW1jL3NkaW9fZnVuYy5oPgogCisjaW5jbHVkZSAiaG9z
dC5oIgogI2luY2x1ZGUgInNkaW9fb3BzLmgiCiAjaW5jbHVkZSAiY29yZS5oIgogI2luY2x1ZGUg
ImNhcmQuaCIKQEAgLTczOCwzICs3MzksMTUgQEAgaW50IHNkaW9fc2V0X2hvc3RfcG1fZmxhZ3Mo
c3RydWN0IHNkaW9fZnVuYyAqZnVuYywgbW1jX3BtX2ZsYWdfdCBmbGFncykKIAlyZXR1cm4gMDsK
IH0KIEVYUE9SVF9TWU1CT0xfR1BMKHNkaW9fc2V0X2hvc3RfcG1fZmxhZ3MpOworCit2b2lkIHNk
aW9fcmV0dW5lX2hvbGRfbm93KHN0cnVjdCBzZGlvX2Z1bmMgKmZ1bmMpCit7CisJbW1jX3JldHVu
ZV9ob2xkX25vdyhmdW5jLT5jYXJkLT5ob3N0KTsKK30KK0VYUE9SVF9TWU1CT0xfR1BMKHNkaW9f
cmV0dW5lX2hvbGRfbm93KTsKKwordm9pZCBzZGlvX3JldHVuZV9yZWxlYXNlKHN0cnVjdCBzZGlv
X2Z1bmMgKmZ1bmMpCit7CisJbW1jX3JldHVuZV9yZWxlYXNlKGZ1bmMtPmNhcmQtPmhvc3QpOwor
fQorRVhQT1JUX1NZTUJPTF9HUEwoc2Rpb19yZXR1bmVfcmVsZWFzZSk7CmRpZmYgLS1naXQgYS9k
cml2ZXJzL25ldC93aXJlbGVzcy9icm9hZGNvbS9icmNtODAyMTEvYnJjbWZtYWMvc2Rpby5jIGIv
ZHJpdmVycy9uZXQvd2lyZWxlc3MvYnJvYWRjb20vYnJjbTgwMjExL2JyY21mbWFjL3NkaW8uYwpp
bmRleCAyMmI3M2RhNDI4MjIuLmM5MTVjMzlkNTE5ZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9uZXQv
d2lyZWxlc3MvYnJvYWRjb20vYnJjbTgwMjExL2JyY21mbWFjL3NkaW8uYworKysgYi9kcml2ZXJz
L25ldC93aXJlbGVzcy9icm9hZGNvbS9icmNtODAyMTEvYnJjbWZtYWMvc2Rpby5jCkBAIC02Nzks
NiArNjc5LDExIEBAIGJyY21mX3NkaW9fa3NvX2NvbnRyb2woc3RydWN0IGJyY21mX3NkaW8gKmJ1
cywgYm9vbCBvbikKIAlicmNtZl9kYmcoVFJBQ0UsICJFbnRlcjogb249JWRcbiIsIG9uKTsKIAog
CXdyX3ZhbCA9IChvbiA8PCBTQlNESU9fRlVOQzFfU0xFRVBDU1JfS1NPX1NISUZUKTsKKworCS8q
IENhbm5vdCByZS10dW5lIGlmIGRldmljZSBpcyBhc2xlZXAgKi8KKwlpZiAob24pCisJCXNkaW9f
cmV0dW5lX2hvbGRfbm93KGJ1cy0+c2Rpb2Rldi0+ZnVuYzEpOworCiAJLyogMXN0IEtTTyB3cml0
ZSBnb2VzIHRvIEFPUyB3YWtlIHVwIGNvcmUgaWYgZGV2aWNlIGlzIGFzbGVlcCAgKi8KIAlicmNt
Zl9zZGlvZF93cml0ZWIoYnVzLT5zZGlvZGV2LCBTQlNESU9fRlVOQzFfU0xFRVBDU1IsIHdyX3Zh
bCwgJmVycik7CiAKQEAgLTY5MSw2ICs2OTYsNyBAQCBicmNtZl9zZGlvX2tzb19jb250cm9sKHN0
cnVjdCBicmNtZl9zZGlvICpidXMsIGJvb2wgb24pCiAJCXJldHVybiBlcnI7CiAKIAlpZiAob24p
IHsKKwkJc2Rpb19yZXR1bmVfcmVsZWFzZShidXMtPnNkaW9kZXYtPmZ1bmMxKTsKIAkJLyogZGV2
aWNlIFdBS0VVUCB0aHJvdWdoIEtTTzoKIAkJICogd3JpdGUgYml0IDAgJiByZWFkIGJhY2sgdW50
aWwKIAkJICogYm90aCBiaXRzIDAgKGtzbyBiaXQpICYgMSAoZGV2IG9uIHN0YXR1cykgYXJlIHNl
dApkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9tbWMvc2Rpb19mdW5jLmggYi9pbmNsdWRlL2xp
bnV4L21tYy9zZGlvX2Z1bmMuaAppbmRleCA1Njg1ODA1NTMzYjUuLjg1YzI0YjA2OTRkNyAxMDA2
NDQKLS0tIGEvaW5jbHVkZS9saW51eC9tbWMvc2Rpb19mdW5jLmgKKysrIGIvaW5jbHVkZS9saW51
eC9tbWMvc2Rpb19mdW5jLmgKQEAgLTE3MSw0ICsxNzEsNyBAQCBleHRlcm4gdm9pZCBzZGlvX2Yw
X3dyaXRlYihzdHJ1Y3Qgc2Rpb19mdW5jICpmdW5jLCB1bnNpZ25lZCBjaGFyIGIsCiBleHRlcm4g
bW1jX3BtX2ZsYWdfdCBzZGlvX2dldF9ob3N0X3BtX2NhcHMoc3RydWN0IHNkaW9fZnVuYyAqZnVu
Yyk7CiBleHRlcm4gaW50IHNkaW9fc2V0X2hvc3RfcG1fZmxhZ3Moc3RydWN0IHNkaW9fZnVuYyAq
ZnVuYywgbW1jX3BtX2ZsYWdfdCBmbGFncyk7CiAKK2V4dGVybiB2b2lkIHNkaW9fcmV0dW5lX2hv
bGRfbm93KHN0cnVjdCBzZGlvX2Z1bmMgKmZ1bmMpOworZXh0ZXJuIHZvaWQgc2Rpb19yZXR1bmVf
cmVsZWFzZShzdHJ1Y3Qgc2Rpb19mdW5jICpmdW5jKTsKKwogI2VuZGlmIC8qIExJTlVYX01NQ19T
RElPX0ZVTkNfSCAqLwoKCgoKCmRpZmYgLS1naXQgYS9kcml2ZXJzL21tYy9jb3JlL3NkaW9faW8u
YyBiL2RyaXZlcnMvbW1jL2NvcmUvc2Rpb19pby5jCmluZGV4IDNmNjdmYmJlMGQ3NS4uN2E4MWE1
MDM1NDFiIDEwMDY0NAotLS0gYS9kcml2ZXJzL21tYy9jb3JlL3NkaW9faW8uYworKysgYi9kcml2
ZXJzL21tYy9jb3JlL3NkaW9faW8uYwpAQCAtMTYsNiArMTYsNyBAQAogI2luY2x1ZGUgPGxpbnV4
L21tYy9zZGlvLmg+CiAjaW5jbHVkZSA8bGludXgvbW1jL3NkaW9fZnVuYy5oPgogCisjaW5jbHVk
ZSAiaG9zdC5oIgogI2luY2x1ZGUgInNkaW9fb3BzLmgiCiAjaW5jbHVkZSAiY29yZS5oIgogI2lu
Y2x1ZGUgImNhcmQuaCIKQEAgLTczOCwzICs3MzksMTUgQEAgaW50IHNkaW9fc2V0X2hvc3RfcG1f
ZmxhZ3Moc3RydWN0IHNkaW9fZnVuYyAqZnVuYywgbW1jX3BtX2ZsYWdfdCBmbGFncykKIAlyZXR1
cm4gMDsKIH0KIEVYUE9SVF9TWU1CT0xfR1BMKHNkaW9fc2V0X2hvc3RfcG1fZmxhZ3MpOworCit2
b2lkIHNkaW9fcmV0dW5lX2hvbGRfbm93KHN0cnVjdCBzZGlvX2Z1bmMgKmZ1bmMpCit7CisJbW1j
X3JldHVuZV9ob2xkX25vdyhmdW5jLT5jYXJkLT5ob3N0KTsKK30KK0VYUE9SVF9TWU1CT0xfR1BM
KHNkaW9fcmV0dW5lX2hvbGRfbm93KTsKKwordm9pZCBzZGlvX3JldHVuZV9yZWxlYXNlKHN0cnVj
dCBzZGlvX2Z1bmMgKmZ1bmMpCit7CisJbW1jX3JldHVuZV9yZWxlYXNlKGZ1bmMtPmNhcmQtPmhv
c3QpOworfQorRVhQT1JUX1NZTUJPTF9HUEwoc2Rpb19yZXR1bmVfcmVsZWFzZSk7CmRpZmYgLS1n
aXQgYS9kcml2ZXJzL25ldC93aXJlbGVzcy9icm9hZGNvbS9icmNtODAyMTEvYnJjbWZtYWMvc2Rp
by5jIGIvZHJpdmVycy9uZXQvd2lyZWxlc3MvYnJvYWRjb20vYnJjbTgwMjExL2JyY21mbWFjL3Nk
aW8uYwppbmRleCAyMmI3M2RhNDI4MjIuLjUwYzE1MzkzMjY4MyAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9uZXQvd2lyZWxlc3MvYnJvYWRjb20vYnJjbTgwMjExL2JyY21mbWFjL3NkaW8uYworKysgYi9k
cml2ZXJzL25ldC93aXJlbGVzcy9icm9hZGNvbS9icmNtODAyMTEvYnJjbWZtYWMvc2Rpby5jCkBA
IC02NzksNiArNjc5LDExIEBAIGJyY21mX3NkaW9fa3NvX2NvbnRyb2woc3RydWN0IGJyY21mX3Nk
aW8gKmJ1cywgYm9vbCBvbikKIAlicmNtZl9kYmcoVFJBQ0UsICJFbnRlcjogb249JWRcbiIsIG9u
KTsKIAogCXdyX3ZhbCA9IChvbiA8PCBTQlNESU9fRlVOQzFfU0xFRVBDU1JfS1NPX1NISUZUKTsK
KworCS8qIENhbm5vdCByZS10dW5lIGlmIGRldmljZSBpcyBhc2xlZXAgKi8KKwlpZiAob24pCisJ
CXNkaW9fcmV0dW5lX2hvbGRfbm93KGJ1cy0+c2Rpb2Rldi0+ZnVuYzEpOworCiAJLyogMXN0IEtT
TyB3cml0ZSBnb2VzIHRvIEFPUyB3YWtlIHVwIGNvcmUgaWYgZGV2aWNlIGlzIGFzbGVlcCAgKi8K
IAlicmNtZl9zZGlvZF93cml0ZWIoYnVzLT5zZGlvZGV2LCBTQlNESU9fRlVOQzFfU0xFRVBDU1Is
IHdyX3ZhbCwgJmVycik7CiAKQEAgLTczMSw2ICs3MzYsOSBAQCBicmNtZl9zZGlvX2tzb19jb250
cm9sKHN0cnVjdCBicmNtZl9zZGlvICpidXMsIGJvb2wgb24pCiAKIAl9IHdoaWxlICh0cnlfY250
KysgPCBNQVhfS1NPX0FUVEVNUFRTKTsKIAorCWlmIChvbikKKwkJc2Rpb19yZXR1bmVfcmVsZWFz
ZShidXMtPnNkaW9kZXYtPmZ1bmMxKTsKKwogCWlmICh0cnlfY250ID4gMikKIAkJYnJjbWZfZGJn
KFNESU8sICJ0cnlfY250PSVkIHJkX3ZhbD0weCV4IGVycj0lZFxuIiwgdHJ5X2NudCwKIAkJCSAg
cmRfdmFsLCBlcnIpOwpkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9tbWMvc2Rpb19mdW5jLmgg
Yi9pbmNsdWRlL2xpbnV4L21tYy9zZGlvX2Z1bmMuaAppbmRleCA1Njg1ODA1NTMzYjUuLjg1YzI0
YjA2OTRkNyAxMDA2NDQKLS0tIGEvaW5jbHVkZS9saW51eC9tbWMvc2Rpb19mdW5jLmgKKysrIGIv
aW5jbHVkZS9saW51eC9tbWMvc2Rpb19mdW5jLmgKQEAgLTE3MSw0ICsxNzEsNyBAQCBleHRlcm4g
dm9pZCBzZGlvX2YwX3dyaXRlYihzdHJ1Y3Qgc2Rpb19mdW5jICpmdW5jLCB1bnNpZ25lZCBjaGFy
IGIsCiBleHRlcm4gbW1jX3BtX2ZsYWdfdCBzZGlvX2dldF9ob3N0X3BtX2NhcHMoc3RydWN0IHNk
aW9fZnVuYyAqZnVuYyk7CiBleHRlcm4gaW50IHNkaW9fc2V0X2hvc3RfcG1fZmxhZ3Moc3RydWN0
IHNkaW9fZnVuYyAqZnVuYywgbW1jX3BtX2ZsYWdfdCBmbGFncyk7CiAKK2V4dGVybiB2b2lkIHNk
aW9fcmV0dW5lX2hvbGRfbm93KHN0cnVjdCBzZGlvX2Z1bmMgKmZ1bmMpOworZXh0ZXJuIHZvaWQg
c2Rpb19yZXR1bmVfcmVsZWFzZShzdHJ1Y3Qgc2Rpb19mdW5jICpmdW5jKTsKKwogI2VuZGlmIC8q
IExJTlVYX01NQ19TRElPX0ZVTkNfSCAqLwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tj
aGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
