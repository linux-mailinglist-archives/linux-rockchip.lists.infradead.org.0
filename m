Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77B14808C0
	for <lists+linux-rockchip@lfdr.de>; Sun,  4 Aug 2019 02:35:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PLoLbBXL1t5/KzgpwvpXSmSg8aTfJlnW/+3NvcxaoQQ=; b=m88vf8HTd7nlNl
	S8+gy0QJkZe+45Xs4BzU6JG5ecgX6Qk8ieV3WASuSW5io0HJh4YUiTdj8iFkfyuw9OplAproTC7yK
	8TVIiSQHL9lTw5EH3dKmLcOp+Iw1wXWKPjrNDp5hcvV7shU5CMwWhAV6mNAWr/VT1iBfR5CWtk9p9
	cD9wcLAEk/U7BgizwmeiaVad0NnKXmrfiisIa9tg42KpTILskY5q/2fWZdCpO00xOZUYwpZcp/oZU
	qSprCKKmRSvayi4gUPqWU9aYwfbrfAjiNuzNqGKMP1QXjkn2UuRi8TXCkTNspJYQBQDPeCLgQvtJy
	o2Mr9juqe8GgZpjHGQMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hu4UJ-0008BF-Rt; Sun, 04 Aug 2019 00:35:04 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hu4Tp-000820-Uu; Sun, 04 Aug 2019 00:34:36 +0000
Received: from p508fd26f.dip0.t-ipconnect.de ([80.143.210.111]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hu4Ti-00011R-N9; Sun, 04 Aug 2019 02:34:26 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Andy Yan <andyshrk@gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Add dts for Leez RK3399 P710 SBC
Date: Sun, 04 Aug 2019 02:34:26 +0200
Message-ID: <22687582.BTWJvYJJdG@phil>
In-Reply-To: <20190803114612.4830-1-andyshrk@gmail.com>
References: <20190803114612.4830-1-andyshrk@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190803_173434_153182_11274148 
X-CRM114-Status: GOOD (  18.12  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SGkgQW5keSwKCkFtIFNhbXN0YWcsIDMuIEF1Z3VzdCAyMDE5LCAxMzo0NjoxMiBDRVNUIHNjaHJp
ZWIgQW5keSBZYW46Cj4gTGVleiBQNzEwIGlzIGEgUkszMzk5IGJhc2VkIFNCQywgZGVzaWduZWQg
YnkgTGVleiB0ZWFtCj4gZnJvbSBsZW5vdm8gWzBdLgo+IAo+IFNwZWNpZmljYXRpb24KPiAtIFJv
Y2tjaGlwIFJLMzM5OQo+IC0gNC8yR0IgTFBERFI0Cj4gLSBURiBzZCBzY2FyZCBzbG90Cj4gLSBl
TU1DCj4gLSBNLjIgQi1LZXkgZm9yIDRHIExURQo+IC0gQVA2MjU2IGZvciBXaUZpICsgQlQKPiAt
IEdpZ2FiaXQgZXRoZXJuZXQKPiAtIEhETUkgb3V0Cj4gLSA0MCBwaW4gaGVhZGVyCj4gLSBUWVBF
LUMgUG93ZXIgc3VwcGx5Cj4gCj4gWzBdIGh0dHBzOi8vbGVlei5sZW5vdm8uY29tCj4gCj4gU2ln
bmVkLW9mZi1ieTogQW5keSBZYW4gPGFuZHlzaHJrQGdtYWlsLmNvbT4KPiAtLS0KPiAgLi4uL2Rl
dmljZXRyZWUvYmluZGluZ3MvYXJtL3JvY2tjaGlwLnlhbWwgICAgIHwgICA1ICsKPiAgYXJjaC9h
cm02NC9ib290L2R0cy9yb2NrY2hpcC9NYWtlZmlsZSAgICAgICAgIHwgICAxICsKPiAgLi4uL2Jv
b3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1sZWV6LXA3MTAuZHRzICAgIHwgNjM1ICsrKysrKysrKysr
KysrKysrKwo+ICAzIGZpbGVzIGNoYW5nZWQsIDY0MSBpbnNlcnRpb25zKCspCj4gIGNyZWF0ZSBt
b2RlIDEwMDY0NCBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1sZWV6LXA3MTAu
ZHRzCj4gCj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9h
cm0vcm9ja2NoaXAueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0v
cm9ja2NoaXAueWFtbAo+IGluZGV4IDM0ODY1MDQyZjRlNC4uZGE5Y2Q5NDdhYmZhIDEwMDY0NAo+
IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vcm9ja2NoaXAueWFt
bAo+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vcm9ja2NoaXAu
eWFtbAo+IEBAIC0zMjksNiArMzI5LDExIEBAIHByb3BlcnRpZXM6Cj4gICAgICAgICAgICAgICAg
LSBraGFkYXMsZWRnZS12Cj4gICAgICAgICAgICAtIGNvbnN0OiByb2NrY2hpcCxyazMzOTkKPiAg
Cj4gKyAgICAgIC0gZGVzY3JpcHRpb246IExlZXogUkszMzk5IFA3MTAKPiArICAgICAgICBpdGVt
czoKPiArICAgICAgICAgIC0gY29uc3Q6IGxlZXoscDcxMAoKSXMgImxlZXoiIHJlYWxseSB0aGUg
dmVuZG9yPwpQYXJ0IG9mIG1lIHdvdWxkIGFzc3VtZSBzb21ldGhpbmcgbGlrZQoJbGVub3ZvLGxl
ZXotcDcxMAoKU28gcGxlYXNlIGNsYXJpZnkgOi0pCkFuZCBhbHNvIHBsZWFzZSBtYWtlIHN1cmUg
dGhlIGRlY2lkZWQgdmVuZG9yIGlzIHBhcnQgb2YgdGhlIHZlbmRvci1wcmVmaXhlcwpiaW5kaW5n
IGluIERvY3VtZW50YXRpb24vZGV2aWNlc3RyZWUvYmluZGluZ3MvdmVuZG9yLXByZWZpeGVzLnlh
bWwKCj4gKyAgICAgICAgICAtIGNvbnN0OiByb2NrY2hpcCxyazMzOTkKPiArCj4gICAgICAgIC0g
ZGVzY3JpcHRpb246IG1xbWFrZXIgTWlRaQo+ICAgICAgICAgIGl0ZW1zOgo+ICAgICAgICAgICAg
LSBjb25zdDogbXFtYWtlcixtaXFpCj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMv
cm9ja2NoaXAvTWFrZWZpbGUgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL01ha2VmaWxl
Cj4gaW5kZXggZGFhMmM3OGUyMmMzLi4xZjE4YTkzOTJkMTUgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9h
cm02NC9ib290L2R0cy9yb2NrY2hpcC9NYWtlZmlsZQo+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9k
dHMvcm9ja2NoaXAvTWFrZWZpbGUKPiBAQCAtMjAsNiArMjAsNyBAQCBkdGItJChDT05GSUdfQVJD
SF9ST0NLQ0hJUCkgKz0gcmszMzk5LWh1Z3N1bi14OTkuZHRiCj4gIGR0Yi0kKENPTkZJR19BUkNI
X1JPQ0tDSElQKSArPSByazMzOTkta2hhZGFzLWVkZ2UuZHRiCj4gIGR0Yi0kKENPTkZJR19BUkNI
X1JPQ0tDSElQKSArPSByazMzOTkta2hhZGFzLWVkZ2UtY2FwdGFpbi5kdGIKPiAgZHRiLSQoQ09O
RklHX0FSQ0hfUk9DS0NISVApICs9IHJrMzM5OS1raGFkYXMtZWRnZS12LmR0Ygo+ICtkdGItJChD
T05GSUdfQVJDSF9ST0NLQ0hJUCkgKz0gcmszMzk5LWxlZXotcDcxMC5kdGIKPiAgZHRiLSQoQ09O
RklHX0FSQ0hfUk9DS0NISVApICs9IHJrMzM5OS1uYW5vcGMtdDQuZHRiCj4gIGR0Yi0kKENPTkZJ
R19BUkNIX1JPQ0tDSElQKSArPSByazMzOTktbmFub3BpLW00LmR0Ygo+ICBkdGItJChDT05GSUdf
QVJDSF9ST0NLQ0hJUCkgKz0gcmszMzk5LW5hbm9waS1uZW80LmR0Ygo+IGRpZmYgLS1naXQgYS9h
cmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1sZWV6LXA3MTAuZHRzIGIvYXJjaC9h
cm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktbGVlei1wNzEwLmR0cwo+IG5ldyBmaWxlIG1v
ZGUgMTAwNjQ0Cj4gaW5kZXggMDAwMDAwMDAwMDAwLi5iMzQyZjVlODY5MmIKPiAtLS0gL2Rldi9u
dWxsCj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktbGVlei1wNzEw
LmR0cwo+IEBAIC0wLDAgKzEsNjM1IEBACj4gKy8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiAo
R1BMLTIuMCsgT1IgTUlUKQo+ICsvKgo+ICsgKiBDb3B5cmlnaHQgKGMpIDIwMTkgQW5keSBZYW4g
PGFuZHkueWFuQGdtYWlsLmNvbT4KPiArICovCj4gKwo+ICsvZHRzLXYxLzsKPiArI2luY2x1ZGUg
PGR0LWJpbmRpbmdzL2lucHV0L2xpbnV4LWV2ZW50LWNvZGVzLmg+Cj4gKyNpbmNsdWRlIDxkdC1i
aW5kaW5ncy9wd20vcHdtLmg+Cj4gKyNpbmNsdWRlICJyazMzOTkuZHRzaSIKPiArI2luY2x1ZGUg
InJrMzM5OS1vcHAuZHRzaSIKPiArCj4gKy8gewo+ICsJbW9kZWwgPSAiTGVleiBSSzMzOTkgUDcx
MCI7Cj4gKwljb21wYXRpYmxlID0gImxlZXoscDcxMCIsICJyb2NrY2hpcCxyazMzOTkiOwoKc2Ft
ZSBjb21tZW50IGFzIGFib3ZlLCBzbyBtYXliZToKCW1vZGVsID0gIkxlbm92byBMZWV6IFJLMzM5
OSBQNzEwIjsKCWNvbXBhdGlibGUgPSAibGVub3ZvLGxlZXotcDcxMCIsICJyb2NrY2hpcCxyazMz
OTkiOwoKCgo+ICsKPiArCWNob3NlbiB7Cj4gKwkJc3Rkb3V0LXBhdGggPSAic2VyaWFsMjoxNTAw
MDAwbjgiOwo+ICsJfTsKPiArCj4gKwljbGtpbl9nbWFjOiBleHRlcm5hbC1nbWFjLWNsb2NrIHsK
PiArCQljb21wYXRpYmxlID0gImZpeGVkLWNsb2NrIjsKPiArCQljbG9jay1mcmVxdWVuY3kgPSA8
MTI1MDAwMDAwPjsKPiArCQljbG9jay1vdXRwdXQtbmFtZXMgPSAiY2xraW5fZ21hYyI7Cj4gKwkJ
I2Nsb2NrLWNlbGxzID0gPDA+Owo+ICsJfTsKPiArCj4gKwlzZGlvX3B3cnNlcTogc2Rpby1wd3Jz
ZXEgewo+ICsJCWNvbXBhdGlibGUgPSAibW1jLXB3cnNlcS1zaW1wbGUiOwo+ICsJCWNsb2NrcyA9
IDwmcms4MDggMT47Cj4gKwkJY2xvY2stbmFtZXMgPSAiZXh0X2Nsb2NrIjsKPiArCQlwaW5jdHJs
LW5hbWVzID0gImRlZmF1bHQiOwo+ICsJCXBpbmN0cmwtMCA9IDwmd2lmaV9lbmFibGVfaD47Cj4g
KwkJcmVzZXQtZ3Bpb3MgPSA8JmdwaW8wIFJLX1BCMiBHUElPX0FDVElWRV9MT1c+Owo+ICsJfTsK
PiArCj4gKwlkYzV2X2FkcDogZGMtNXYgewo+ICsJCWNvbXBhdGlibGUgPSAicmVndWxhdG9yLWZp
eGVkIjsKPiArCQlyZWd1bGF0b3ItbmFtZSA9ICJkYzV2X2FkYXB0ZXIiOwo+ICsJCXJlZ3VsYXRv
ci1hbHdheXMtb247Cj4gKwkJcmVndWxhdG9yLWJvb3Qtb247Cj4gKwkJcmVndWxhdG9yLW1pbi1t
aWNyb3ZvbHQgPSA8NTAwMDAwMD47Cj4gKwkJcmVndWxhdG9yLW1heC1taWNyb3ZvbHQgPSA8NTAw
MDAwMD47Cj4gKwl9Owo+ICsKPiArCXZjYzV2MF9zeXM6IHZjYy1zeXMgewoKdmNjNXYwX3N5czog
dmNjNXYwLXN5cyA/Cgo+ICsJCWNvbXBhdGlibGUgPSAicmVndWxhdG9yLWZpeGVkIjsKPiArCQly
ZWd1bGF0b3ItbmFtZSA9ICJ2Y2M1djBfc3lzIjsKPiArCQlyZWd1bGF0b3ItYWx3YXlzLW9uOwo+
ICsJCXJlZ3VsYXRvci1ib290LW9uOwo+ICsJCXJlZ3VsYXRvci1taW4tbWljcm92b2x0ID0gPDUw
MDAwMDA+Owo+ICsJCXJlZ3VsYXRvci1tYXgtbWljcm92b2x0ID0gPDUwMDAwMDA+Owo+ICsJCXZp
bi1zdXBwbHkgPSA8JmRjNXZfYWRwPjsKPiArCX07Cj4gKwo+ICsJdmNjM3YzX3N5czogdmNjM3Yz
LXN5cyB7Cj4gKwkJY29tcGF0aWJsZSA9ICJyZWd1bGF0b3ItZml4ZWQiOwo+ICsJCXJlZ3VsYXRv
ci1uYW1lID0gInZjYzN2M19zeXMiOwo+ICsJCXJlZ3VsYXRvci1hbHdheXMtb247Cj4gKwkJcmVn
dWxhdG9yLWJvb3Qtb247Cj4gKwkJcmVndWxhdG9yLW1pbi1taWNyb3ZvbHQgPSA8MzMwMDAwMD47
Cj4gKwkJcmVndWxhdG9yLW1heC1taWNyb3ZvbHQgPSA8MzMwMDAwMD47Cj4gKwkJdmluLXN1cHBs
eSA9IDwmdmNjNXYwX3N5cz47Cj4gKwl9Owo+ICsKPiArCXZjYzV2MF9ob3N0OiB2Y2M1djAtaG9z
dC1yZWd1bGF0b3Igewo+ICsJCWNvbXBhdGlibGUgPSAicmVndWxhdG9yLWZpeGVkIjsKPiArCQll
bmFibGUtYWN0aXZlLWhpZ2g7Cj4gKwkJZ3BpbyA9IDwmZ3BpbzIgUktfUEEyIEdQSU9fQUNUSVZF
X0hJR0g+Owo+ICsJCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4gKwkJcGluY3RybC0wID0g
PCZ2Y2M1djBfaG9zdF9lbj47Cj4gKwkJcmVndWxhdG9yLW5hbWUgPSAidmNjNXYwX2hvc3QiOwo+
ICsJCXJlZ3VsYXRvci1hbHdheXMtb247Cj4gKwkJdmluLXN1cHBseSA9IDwmdmNjNXYwX3N5cz47
Cj4gKwl9Owo+ICsKPiArCXZjY19sYW46IHZjYzN2My1waHktcmVndWxhdG9yIHsKPiArCQljb21w
YXRpYmxlID0gInJlZ3VsYXRvci1maXhlZCI7Cj4gKwkJcmVndWxhdG9yLW5hbWUgPSAidmNjX2xh
biI7Cj4gKwkJcmVndWxhdG9yLWFsd2F5cy1vbjsKPiArCQlyZWd1bGF0b3ItYm9vdC1vbjsKPiAr
CQlyZWd1bGF0b3ItbWluLW1pY3Jvdm9sdCA9IDwzMzAwMDAwPjsKPiArCQlyZWd1bGF0b3ItbWF4
LW1pY3Jvdm9sdCA9IDwzMzAwMDAwPjsKPiArCj4gKwkJcmVndWxhdG9yLXN0YXRlLW1lbSB7Cj4g
KwkJCXJlZ3VsYXRvci1vZmYtaW4tc3VzcGVuZDsKPiArCQl9Owo+ICsJfTsKCkluIGdlbmVyYWws
IHBsZWFzZSBtb2RlbCBhbiBhY3R1YWwgcmVndWxhdG9yLXRyZWUgYW5kIGRvIG5vdCBjb3B5IHRo
ZQp1bnNwZWNpZmljIFJvY2tjaGlwIHZlbmRvciB0cmVlLiBUaGVzZSB1bmNvbm5lY3RlZCByZWd1
bGF0b3JzIGFyZSBhIHZlcnkKZ29vZCBpbmRpY2F0b3IgdGhhdCB0aGUgcmVhbCBwb3dlci10cmVl
IGdvdCBpZ25vcmVkIChtaXNzaW5nIHZpbi1zdXBwbHkgaGVyZSkKCkkgZm91bmQgc2NoZW1hdGlj
cyBvbiBodHRwczovL2dpdGh1Yi5jb20vbGVlenNiYy9yZXNvdXJjZXMvd2lraS9MZWV6LVA3MTA6
CumTvuaOpTogaHR0cHM6Ly9wYW4uYmFpZHUuY29tL3MvMU5QV2J1STVjc1Q0emZ0S1VDblJzN2cK
5o+Q5Y+W56CBOiBydnJoCgphbmQgdGhlcmUgdGhlIHBvd2VyLXRyZWUgaXMgZGVzY3JpYmVkIGlu
IGEgY29tcGxldGUgd2F5LgoKcmVndWxhdG9yL3JlZ3VsYXRvcl9zdW1tYXJheSBpbiB0aGUga2Vy
bmVscyBkZWJ1Z2ZzIHNob3VsZApzaG93IGEgbmljZSB0cmVlIHN0cnVjdHVyZSBzdGFydGluZyBm
cm9tIHRoZSBkYy1hZGFwdGVyIGlucHV0LgoKQWxzbyBwbGVhc2UgdXNlIG5hbWVzIG1hdGNoaW5n
IHRoZSBzdXBwbHkgbmFtZXMgZnJvbSB0aGUgc2NoZW1hdGljcy4KClNhbWUgZm9yIHBpbmN0cmwg
bmFtZXMsIHBsZWFzZSB1c2UgbmFtZXMgYXMgdXNlZCBpbiB0aGUgYm9hcmQgc2NoZW1hdGljcy4K
Cgo+ICsJdmRkX2xvZzogdmRkLWxvZyB7Cj4gKwkJY29tcGF0aWJsZSA9ICJwd20tcmVndWxhdG9y
IjsKPiArCQlwd21zID0gPCZwd20yIDAgMjUwMDAgMT47Cj4gKwkJcmVndWxhdG9yLW5hbWUgPSAi
dmRkX2xvZyI7Cj4gKwkJcmVndWxhdG9yLWFsd2F5cy1vbjsKPiArCQlyZWd1bGF0b3ItYm9vdC1v
bjsKPiArCQlyZWd1bGF0b3ItbWluLW1pY3Jvdm9sdCA9IDw4MDAwMDA+Owo+ICsJCXJlZ3VsYXRv
ci1tYXgtbWljcm92b2x0ID0gPDE0MDAwMDA+Owo+ICsJCXZpbi1zdXBwbHkgPSA8JnZjYzV2MF9z
eXM+Owo+ICsJfTsKPiArfTsKPiArCj4gKyZjcHVfbDAgewo+ICsJY3B1LXN1cHBseSA9IDwmdmRk
X2NwdV9sPjsKPiArfTsKPiArCj4gKyZjcHVfbDEgewo+ICsJY3B1LXN1cHBseSA9IDwmdmRkX2Nw
dV9sPjsKPiArfTsKPiArCj4gKyZjcHVfbDIgewo+ICsJY3B1LXN1cHBseSA9IDwmdmRkX2NwdV9s
PjsKPiArfTsKPiArCj4gKyZjcHVfbDMgewo+ICsJY3B1LXN1cHBseSA9IDwmdmRkX2NwdV9sPjsK
PiArfTsKPiArCj4gKyZjcHVfYjAgewo+ICsJY3B1LXN1cHBseSA9IDwmdmRkX2NwdV9iPjsKPiAr
fTsKPiArCj4gKyZjcHVfYjEgewo+ICsJY3B1LXN1cHBseSA9IDwmdmRkX2NwdV9iPjsKPiArfTsK
PiArCj4gKyZlbW1jX3BoeSB7Cj4gKwlzdGF0dXMgPSAib2theSI7Cj4gK307Cj4gKwo+ICsmZ21h
YyB7Cj4gKwlhc3NpZ25lZC1jbG9ja3MgPSA8JmNydSBTQ0xLX1JNSUlfU1JDPjsKPiArCWFzc2ln
bmVkLWNsb2NrLXBhcmVudHMgPSA8JmNsa2luX2dtYWM+Owo+ICsJY2xvY2tfaW5fb3V0ID0gImlu
cHV0IjsKPiArCXBoeS1zdXBwbHkgPSA8JnZjY19sYW4+Owo+ICsJcGh5LW1vZGUgPSAicmdtaWki
Owo+ICsJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPiArCXBpbmN0cmwtMCA9IDwmcmdtaWlf
cGlucz47Cj4gKwlzbnBzLHJlc2V0LWdwaW8gPSA8JmdwaW8zIFJLX1BCNyBHUElPX0FDVElWRV9M
T1c+Owo+ICsJc25wcyxyZXNldC1hY3RpdmUtbG93Owo+ICsJc25wcyxyZXNldC1kZWxheXMtdXMg
PSA8MCAxMDAwMCA1MDAwMD47Cj4gKwl0eF9kZWxheSA9IDwweDI4PjsKPiArCXJ4X2RlbGF5ID0g
PDB4MTE+Owo+ICsJc3RhdHVzID0gIm9rYXkiOwo+ICt9Owo+ICsKPiArJmdwdSB7Cj4gKwltYWxp
LXN1cHBseSA9IDwmdmRkX2dwdT47Cj4gKwlzdGF0dXMgPSAib2theSI7Cj4gK307Cj4gKwo+ICsm
aGRtaSB7Cj4gKwlkZGMtaTJjLWJ1cyA9IDwmaTJjMz47CgpjYW4gdGhpcyBhbHNvIHVzZSB0aGUg
aW50ZXJuYWwgaTJjIGluc2lkZSB0aGUgZHctaGRtaT8KCgo+ICsJcGluY3RybC1uYW1lcyA9ICJk
ZWZhdWx0IjsKPiArCXBpbmN0cmwtMCA9IDwmaGRtaV9jZWM+Owo+ICsJc3RhdHVzID0gIm9rYXki
Owo+ICt9Owo+ICsKPiArJmhkbWlfc291bmQgewo+ICsJc3RhdHVzID0gIm9rYXkiOwo+ICt9Owo+
ICsKPiArJmkyYzAgewo+ICsJY2xvY2stZnJlcXVlbmN5ID0gPDQwMDAwMD47Cj4gKwlpMmMtc2Ns
LXJpc2luZy10aW1lLW5zID0gPDE2OD47Cj4gKwlpMmMtc2NsLWZhbGxpbmctdGltZS1ucyA9IDw0
PjsKPiArCXN0YXR1cyA9ICJva2F5IjsKPiArCj4gKwlyazgwODogcG1pY0AxYiB7Cj4gKwkJY29t
cGF0aWJsZSA9ICJyb2NrY2hpcCxyazgwOCI7Cj4gKwkJcmVnID0gPDB4MWI+Owo+ICsJCWludGVy
cnVwdC1wYXJlbnQgPSA8JmdwaW8xPjsKPiArCQlpbnRlcnJ1cHRzID0gPDIxIElSUV9UWVBFX0xF
VkVMX0xPVz47Cj4gKwkJI2Nsb2NrLWNlbGxzID0gPDE+Owo+ICsJCWNsb2NrLW91dHB1dC1uYW1l
cyA9ICJ4aW4zMmsiLCAicms4MDgtY2xrb3V0MiI7Cj4gKwkJcGluY3RybC1uYW1lcyA9ICJkZWZh
dWx0IjsKPiArCQlwaW5jdHJsLTAgPSA8JnBtaWNfaW50X2w+Owo+ICsJCXJvY2tjaGlwLHN5c3Rl
bS1wb3dlci1jb250cm9sbGVyOwo+ICsJCXdha2V1cC1zb3VyY2U7Cj4gKwo+ICsJCXZjYzEtc3Vw
cGx5ID0gPCZ2Y2M1djBfc3lzPjsKPiArCQl2Y2MyLXN1cHBseSA9IDwmdmNjNXYwX3N5cz47Cj4g
KwkJdmNjMy1zdXBwbHkgPSA8JnZjYzV2MF9zeXM+Owo+ICsJCXZjYzQtc3VwcGx5ID0gPCZ2Y2M1
djBfc3lzPjsKPiArCQl2Y2M2LXN1cHBseSA9IDwmdmNjNXYwX3N5cz47Cj4gKwkJdmNjNy1zdXBw
bHkgPSA8JnZjYzV2MF9zeXM+Owo+ICsJCXZjYzgtc3VwcGx5ID0gPCZ2Y2MzdjNfc3lzPjsKPiAr
CQl2Y2M5LXN1cHBseSA9IDwmdmNjNXYwX3N5cz47Cj4gKwkJdmNjMTAtc3VwcGx5ID0gPCZ2Y2M1
djBfc3lzPjsKPiArCQl2Y2MxMS1zdXBwbHkgPSA8JnZjYzV2MF9zeXM+Owo+ICsJCXZjYzEyLXN1
cHBseSA9IDwmdmNjM3YzX3N5cz47Cj4gKwkJdmRkaW8tc3VwcGx5ID0gPCZ2Y2NfMXY4PjsKPiAr
Cj4gKwkJcmVndWxhdG9ycyB7Cj4gKwkJCXZkZF9jZW50ZXI6IERDRENfUkVHMSB7Cj4gKwkJCQly
ZWd1bGF0b3ItbmFtZSA9ICJ2ZGRfY2VudGVyIjsKPiArCQkJCXJlZ3VsYXRvci1hbHdheXMtb247
Cj4gKwkJCQlyZWd1bGF0b3ItYm9vdC1vbjsKPiArCQkJCXJlZ3VsYXRvci1taW4tbWljcm92b2x0
ID0gPDc1MDAwMD47Cj4gKwkJCQlyZWd1bGF0b3ItbWF4LW1pY3Jvdm9sdCA9IDwxMzUwMDAwPjsK
PiArCQkJCXJlZ3VsYXRvci1yYW1wLWRlbGF5ID0gPDYwMDE+Owo+ICsJCQkJcmVndWxhdG9yLXN0
YXRlLW1lbSB7Cj4gKwkJCQkJcmVndWxhdG9yLW9mZi1pbi1zdXNwZW5kOwo+ICsJCQkJfTsKPiAr
CQkJfTsKPiArCj4gKwkJCXZkZF9jcHVfbDogRENEQ19SRUcyIHsKPiArCQkJCXJlZ3VsYXRvci1u
YW1lID0gInZkZF9jcHVfbCI7Cj4gKwkJCQlyZWd1bGF0b3ItYWx3YXlzLW9uOwo+ICsJCQkJcmVn
dWxhdG9yLWJvb3Qtb247Cj4gKwkJCQlyZWd1bGF0b3ItbWluLW1pY3Jvdm9sdCA9IDw3NTAwMDA+
Owo+ICsJCQkJcmVndWxhdG9yLW1heC1taWNyb3ZvbHQgPSA8MTM1MDAwMD47Cj4gKwkJCQlyZWd1
bGF0b3ItcmFtcC1kZWxheSA9IDw2MDAxPjsKPiArCQkJCXJlZ3VsYXRvci1zdGF0ZS1tZW0gewo+
ICsJCQkJCXJlZ3VsYXRvci1vZmYtaW4tc3VzcGVuZDsKPiArCQkJCX07Cj4gKwkJCX07Cj4gKwo+
ICsJCQl2Y2NfZGRyOiBEQ0RDX1JFRzMgewo+ICsJCQkJcmVndWxhdG9yLW5hbWUgPSAidmNjX2Rk
ciI7Cj4gKwkJCQlyZWd1bGF0b3ItYWx3YXlzLW9uOwo+ICsJCQkJcmVndWxhdG9yLWJvb3Qtb247
Cj4gKwkJCQlyZWd1bGF0b3Itc3RhdGUtbWVtIHsKPiArCQkJCQlyZWd1bGF0b3Itb24taW4tc3Vz
cGVuZDsKPiArCQkJCX07Cj4gKwkJCX07Cj4gKwo+ICsJCQl2Y2NfMXY4OiBEQ0RDX1JFRzQgewo+
ICsJCQkJcmVndWxhdG9yLW5hbWUgPSAidmNjXzF2OCI7Cj4gKwkJCQlyZWd1bGF0b3ItYWx3YXlz
LW9uOwo+ICsJCQkJcmVndWxhdG9yLWJvb3Qtb247Cj4gKwkJCQlyZWd1bGF0b3ItbWluLW1pY3Jv
dm9sdCA9IDwxODAwMDAwPjsKPiArCQkJCXJlZ3VsYXRvci1tYXgtbWljcm92b2x0ID0gPDE4MDAw
MDA+Owo+ICsJCQkJcmVndWxhdG9yLXN0YXRlLW1lbSB7Cj4gKwkJCQkJcmVndWxhdG9yLW9uLWlu
LXN1c3BlbmQ7Cj4gKwkJCQkJcmVndWxhdG9yLXN1c3BlbmQtbWljcm92b2x0ID0gPDE4MDAwMDA+
Owo+ICsJCQkJfTsKPiArCQkJfTsKPiArCj4gKwkJCXZjYzF2OF9kdnA6IExET19SRUcxIHsKPiAr
CQkJCXJlZ3VsYXRvci1uYW1lID0gInZjYzF2OF9kdnAiOwo+ICsJCQkJcmVndWxhdG9yLWFsd2F5
cy1vbjsKPiArCQkJCXJlZ3VsYXRvci1ib290LW9uOwo+ICsJCQkJcmVndWxhdG9yLW1pbi1taWNy
b3ZvbHQgPSA8MTgwMDAwMD47Cj4gKwkJCQlyZWd1bGF0b3ItbWF4LW1pY3Jvdm9sdCA9IDwxODAw
MDAwPjsKPiArCQkJCXJlZ3VsYXRvci1zdGF0ZS1tZW0gewo+ICsJCQkJCXJlZ3VsYXRvci1vZmYt
aW4tc3VzcGVuZDsKPiArCQkJCX07Cj4gKwkJCX07Cj4gKwo+ICsJCQl2Y2MxdjhfaGRtaTogTERP
X1JFRzIgewo+ICsJCQkJcmVndWxhdG9yLW5hbWUgPSAidmNjMXY4X2hkbWkiOwo+ICsJCQkJcmVn
dWxhdG9yLWFsd2F5cy1vbjsKPiArCQkJCXJlZ3VsYXRvci1ib290LW9uOwo+ICsJCQkJcmVndWxh
dG9yLW1pbi1taWNyb3ZvbHQgPSA8MTgwMDAwMD47Cj4gKwkJCQlyZWd1bGF0b3ItbWF4LW1pY3Jv
dm9sdCA9IDwxODAwMDAwPjsKPiArCQkJCXJlZ3VsYXRvci1zdGF0ZS1tZW0gewo+ICsJCQkJCXJl
Z3VsYXRvci1vZmYtaW4tc3VzcGVuZDsKPiArCQkJCX07Cj4gKwkJCX07Cj4gKwo+ICsJCQl2Y2Nh
XzF2ODogTERPX1JFRzMgewo+ICsJCQkJcmVndWxhdG9yLW5hbWUgPSAidmNjYV8xdjgiOwo+ICsJ
CQkJcmVndWxhdG9yLWFsd2F5cy1vbjsKPiArCQkJCXJlZ3VsYXRvci1ib290LW9uOwo+ICsJCQkJ
cmVndWxhdG9yLW1pbi1taWNyb3ZvbHQgPSA8MTgwMDAwMD47Cj4gKwkJCQlyZWd1bGF0b3ItbWF4
LW1pY3Jvdm9sdCA9IDwxODAwMDAwPjsKPiArCQkJCXJlZ3VsYXRvci1zdGF0ZS1tZW0gewo+ICsJ
CQkJCXJlZ3VsYXRvci1vbi1pbi1zdXNwZW5kOwo+ICsJCQkJCXJlZ3VsYXRvci1zdXNwZW5kLW1p
Y3Jvdm9sdCA9IDwxODAwMDAwPjsKPiArCQkJCX07Cj4gKwkJCX07Cj4gKwo+ICsJCQl2Y2Npb19z
ZDogTERPX1JFRzQgewo+ICsJCQkJcmVndWxhdG9yLW5hbWUgPSAidmNjaW9fc2QiOwo+ICsJCQkJ
cmVndWxhdG9yLWFsd2F5cy1vbjsKPiArCQkJCXJlZ3VsYXRvci1ib290LW9uOwo+ICsJCQkJcmVn
dWxhdG9yLW1pbi1taWNyb3ZvbHQgPSA8MzAwMDAwMD47Cj4gKwkJCQlyZWd1bGF0b3ItbWF4LW1p
Y3Jvdm9sdCA9IDwzMDAwMDAwPjsKPiArCQkJCXJlZ3VsYXRvci1zdGF0ZS1tZW0gewo+ICsJCQkJ
CXJlZ3VsYXRvci1vbi1pbi1zdXNwZW5kOwo+ICsJCQkJCXJlZ3VsYXRvci1zdXNwZW5kLW1pY3Jv
dm9sdCA9IDwzMDAwMDAwPjsKPiArCQkJCX07Cj4gKwkJCX07Cj4gKwo+ICsJCQl2Y2NhM3YwX2Nv
ZGVjOiBMRE9fUkVHNSB7Cj4gKwkJCQlyZWd1bGF0b3ItbmFtZSA9ICJ2Y2NhM3YwX2NvZGVjIjsK
PiArCQkJCXJlZ3VsYXRvci1hbHdheXMtb247Cj4gKwkJCQlyZWd1bGF0b3ItYm9vdC1vbjsKPiAr
CQkJCXJlZ3VsYXRvci1taW4tbWljcm92b2x0ID0gPDMwMDAwMDA+Owo+ICsJCQkJcmVndWxhdG9y
LW1heC1taWNyb3ZvbHQgPSA8MzAwMDAwMD47Cj4gKwkJCQlyZWd1bGF0b3Itc3RhdGUtbWVtIHsK
PiArCQkJCQlyZWd1bGF0b3Itb2ZmLWluLXN1c3BlbmQ7Cj4gKwkJCQl9Owo+ICsJCQl9Owo+ICsK
PiArCQkJdmNjXzF2NTogTERPX1JFRzYgewo+ICsJCQkJcmVndWxhdG9yLW5hbWUgPSAidmNjXzF2
NSI7Cj4gKwkJCQlyZWd1bGF0b3ItYWx3YXlzLW9uOwo+ICsJCQkJcmVndWxhdG9yLWJvb3Qtb247
Cj4gKwkJCQlyZWd1bGF0b3ItbWluLW1pY3Jvdm9sdCA9IDwxNTAwMDAwPjsKPiArCQkJCXJlZ3Vs
YXRvci1tYXgtbWljcm92b2x0ID0gPDE1MDAwMDA+Owo+ICsJCQkJcmVndWxhdG9yLXN0YXRlLW1l
bSB7Cj4gKwkJCQkJcmVndWxhdG9yLW9uLWluLXN1c3BlbmQ7Cj4gKwkJCQkJcmVndWxhdG9yLXN1
c3BlbmQtbWljcm92b2x0ID0gPDE1MDAwMDA+Owo+ICsJCQkJfTsKPiArCQkJfTsKPiArCj4gKwkJ
CXZjYzB2OV9oZG1pOiBMRE9fUkVHNyB7Cj4gKwkJCQlyZWd1bGF0b3ItbmFtZSA9ICJ2Y2Mwdjlf
aGRtaSI7Cj4gKwkJCQlyZWd1bGF0b3ItYWx3YXlzLW9uOwo+ICsJCQkJcmVndWxhdG9yLWJvb3Qt
b247Cj4gKwkJCQlyZWd1bGF0b3ItbWluLW1pY3Jvdm9sdCA9IDw5MDAwMDA+Owo+ICsJCQkJcmVn
dWxhdG9yLW1heC1taWNyb3ZvbHQgPSA8OTAwMDAwPjsKPiArCQkJCXJlZ3VsYXRvci1zdGF0ZS1t
ZW0gewo+ICsJCQkJCXJlZ3VsYXRvci1vZmYtaW4tc3VzcGVuZDsKPiArCQkJCX07Cj4gKwkJCX07
Cj4gKwo+ICsJCQl2Y2NfM3YwOiBMRE9fUkVHOCB7Cj4gKwkJCQlyZWd1bGF0b3ItbmFtZSA9ICJ2
Y2NfM3YwIjsKPiArCQkJCXJlZ3VsYXRvci1hbHdheXMtb247Cj4gKwkJCQlyZWd1bGF0b3ItYm9v
dC1vbjsKPiArCQkJCXJlZ3VsYXRvci1taW4tbWljcm92b2x0ID0gPDMwMDAwMDA+Owo+ICsJCQkJ
cmVndWxhdG9yLW1heC1taWNyb3ZvbHQgPSA8MzAwMDAwMD47Cj4gKwkJCQlyZWd1bGF0b3Itc3Rh
dGUtbWVtIHsKPiArCQkJCQlyZWd1bGF0b3Itb24taW4tc3VzcGVuZDsKPiArCQkJCQlyZWd1bGF0
b3Itc3VzcGVuZC1taWNyb3ZvbHQgPSA8MzAwMDAwMD47Cj4gKwkJCQl9Owo+ICsJCQl9Owo+ICsK
CnVubmVlZGVkIGJsYW5rIGxpbmUKCj4gKwkJfTsKPiArCX07Cj4gKwoKCkhlaWtvCgoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
