Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F7D81BC0E7
	for <lists+linux-rockchip@lfdr.de>; Tue, 28 Apr 2020 16:14:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yxD38T0OWLaEtonUaJ4NAzNxH2JosMpCRTeU+dTfTaI=; b=h4i3yubcFKXLohEKqvvo2rC59
	nBGI6z+M5OG6nB/NO2McJFnoqCNPp9uWR5wdJ97XxD5zFjsbEmeUtHy98kD0LiaBEdWBrNtKeCHik
	YrULBdhVqublB7uJYSWCnsu+iQweQpwSFBUsFoSYS6iPXrRmecCw7I9/S+kTbZpZaDEO9ZIpJiSwm
	7+caIdU3Xi4ssJOrVAQSQuuYau6nk+sJCBerimwe6aMtKPSfUbnRftZQTdnNwX3NWYTi5B2bAXsWg
	9CfPWCzCJZXNEqf0UHkJnjoybtSi9UdxdEj/NKKgZlwarL1vdLGyd9bw4L076n5pmU+iX0ijlg93j
	5M3Q122lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTQzz-0006z1-B1; Tue, 28 Apr 2020 14:14:11 +0000
Received: from regular1.263xmail.com ([211.150.70.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTQzv-0006xP-HO
 for linux-rockchip@lists.infradead.org; Tue, 28 Apr 2020 14:14:09 +0000
Received: from localhost (unknown [192.168.167.70])
 by regular1.263xmail.com (Postfix) with ESMTP id 656A6435;
 Tue, 28 Apr 2020 22:14:04 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [192.168.0.110] (unknown [112.49.233.123])
 by smtp.263.net (postfix) whith ESMTP id
 P27276T139895576184576S1588083241260322_; 
 Tue, 28 Apr 2020 22:14:03 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <447773a1cc122ddbf157a85d1bb40db9>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 112.49.233.123
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
X-System-Flag: 0
Subject: Re: [PATCH v2 5/6] arm: dts: rk3399: Sync roc-pc-mezzanine from
 v5.7-rc1
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
References: <20200428100019.19155-1-jagan@amarulasolutions.com>
 <20200428100019.19155-6-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <2180b3a1-59af-3686-54d8-d9b868854d8d@rock-chips.com>
Date: Tue, 28 Apr 2020 22:14:01 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200428100019.19155-6-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_071408_477374_41227FAE 
X-CRM114-Status: GOOD (  14.43  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.200 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: u-boot@lists.denx.de, linux-rockchip@lists.infradead.org,
 linux-amarula@amarulasolutions.com, sunil@amarulasolutions.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Ck9uIDIwMjAvNC8yOCDkuIvljYg2OjAwLCBKYWdhbiBUZWtpIHdyb3RlOgo+IFN5bmMgRmlyZWZs
eSBST0MtUkszMzk5LVBDIE1lenphbmluZSBCb2FyZCBkdHMgZmlsZQo+IGZyb20gTGludXggdjUu
Ny1yYzEuCj4KPiBTaWduZWQtb2ZmLWJ5OiBTdW5pZWwgTWFoZXNoIDxzdW5pbEBhbWFydWxhc29s
dXRpb25zLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBKYWdhbiBUZWtpIDxqYWdhbkBhbWFydWxhc29s
dXRpb25zLmNvbT4KCgpSZXZpZXdlZC1ieTogS2V2ZXIgWWFuZyA8a2V2ZXIueWFuZ0Byb2NrLWNo
aXBzLmNvbT4KClRoYW5rcywKLSBLZXZlcgo+IC0tLQo+IENoYW5nZXMgZm9yIHYyOgo+IC0gbm9u
ZQo+Cj4gICBhcmNoL2FybS9kdHMvTWFrZWZpbGUgICAgICAgICAgICAgICAgICAgIHwgIDEgKwo+
ICAgYXJjaC9hcm0vZHRzL3JrMzM5OS1yb2MtcGMtbWV6emFuaW5lLmR0cyB8IDkzICsrKysrKysr
KysrKysrKysrKysrKysrKwo+ICAgMiBmaWxlcyBjaGFuZ2VkLCA5NCBpbnNlcnRpb25zKCspCj4g
ICBjcmVhdGUgbW9kZSAxMDA2NDQgYXJjaC9hcm0vZHRzL3JrMzM5OS1yb2MtcGMtbWV6emFuaW5l
LmR0cwo+Cj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2R0cy9NYWtlZmlsZSBiL2FyY2gvYXJtL2R0
cy9NYWtlZmlsZQo+IGluZGV4IGFmN2Q4MDRiNjYuLjQwOWIwZDFiM2YgMTAwNjQ0Cj4gLS0tIGEv
YXJjaC9hcm0vZHRzL01ha2VmaWxlCj4gKysrIGIvYXJjaC9hcm0vZHRzL01ha2VmaWxlCj4gQEAg
LTEzMSw2ICsxMzEsNyBAQCBkdGItJChDT05GSUdfUk9DS0NISVBfUkszMzk5KSArPSBcCj4gICAJ
cmszMzk5LXB1bWEtZGRyMTYwMC5kdGIgXAo+ICAgCXJrMzM5OS1wdW1hLWRkcjE4NjYuZHRiIFwK
PiAgIAlyazMzOTktcm9jLXBjLmR0YiBcCj4gKwlyazMzOTktcm9jLXBjLW1lenphbmluZS5kdGIg
XAo+ICAgCXJrMzM5OS1yb2NrLXBpLTQuZHRiIFwKPiAgIAlyazMzOTktcm9jazk2MC5kdGIgXAo+
ICAgCXJrMzM5OS1yb2NrcHJvNjQuZHRiCj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2R0cy9yazMz
OTktcm9jLXBjLW1lenphbmluZS5kdHMgYi9hcmNoL2FybS9kdHMvcmszMzk5LXJvYy1wYy1tZXp6
YW5pbmUuZHRzCj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiBpbmRleCAwMDAwMDAwMDAwLi4yYWNi
M2Q1MDBmCj4gLS0tIC9kZXYvbnVsbAo+ICsrKyBiL2FyY2gvYXJtL2R0cy9yazMzOTktcm9jLXBj
LW1lenphbmluZS5kdHMKPiBAQCAtMCwwICsxLDkzIEBACj4gKy8vIFNQRFgtTGljZW5zZS1JZGVu
dGlmaWVyOiAoR1BMLTIuMCsgT1IgTUlUKQo+ICsvKgo+ICsgKiBDb3B5cmlnaHQgKGMpIDIwMTcg
VC1DaGlwIEludGVsbGlnZW50IFRlY2hub2xvZ3kgQ28uLCBMdGQKPiArICogQ29weXJpZ2h0IChj
KSAyMDE5IE1hcmt1cyBSZWljaGwgPG0ucmVpY2hsQGZpdmV0ZWNobm8uZGU+Cj4gKyAqLwo+ICsK
PiArL2R0cy12MS87Cj4gKyNpbmNsdWRlICJyazMzOTktcm9jLXBjLmR0c2kiCj4gKwo+ICsvIHsK
PiArCW1vZGVsID0gIkZpcmVmbHkgUk9DLVJLMzM5OS1QQyBNZXp6YW5pbmUgQm9hcmQiOwo+ICsJ
Y29tcGF0aWJsZSA9ICJmaXJlZmx5LHJvYy1yazMzOTktcGMtbWV6emFuaW5lIiwgInJvY2tjaGlw
LHJrMzM5OSI7Cj4gKwo+ICsJdmNjM3YzX25nZmY6IHZjYzN2My1uZ2ZmIHsKPiArCQljb21wYXRp
YmxlID0gInJlZ3VsYXRvci1maXhlZCI7Cj4gKwkJcmVndWxhdG9yLW5hbWUgPSAidmNjM3YzX25n
ZmYiOwo+ICsJCWVuYWJsZS1hY3RpdmUtaGlnaDsKPiArCQlncGlvID0gPCZncGlvNCBSS19QRDMg
R1BJT19BQ1RJVkVfSElHSD47Cj4gKwkJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPiArCQlw
aW5jdHJsLTAgPSA8JnZjYzN2M19uZ2ZmX2VuPjsKPiArCQlyZWd1bGF0b3ItYWx3YXlzLW9uOwo+
ICsJCXJlZ3VsYXRvci1ib290LW9uOwo+ICsJCXJlZ3VsYXRvci1taW4tbWljcm92b2x0ID0gPDMz
MDAwMDA+Owo+ICsJCXJlZ3VsYXRvci1tYXgtbWljcm92b2x0ID0gPDMzMDAwMDA+Owo+ICsJCXZp
bi1zdXBwbHkgPSA8JmRjXzEydj47Cj4gKwl9Owo+ICsKPiArCXZjYzN2M19wY2llOiB2Y2MzdjMt
cGNpZSB7Cj4gKwkJY29tcGF0aWJsZSA9ICJyZWd1bGF0b3ItZml4ZWQiOwo+ICsJCXJlZ3VsYXRv
ci1uYW1lID0gInZjYzN2M19wY2llIjsKPiArCQllbmFibGUtYWN0aXZlLWhpZ2g7Cj4gKwkJZ3Bp
byA9IDwmZ3BpbzEgUktfUEMxIEdQSU9fQUNUSVZFX0hJR0g+Owo+ICsJCXBpbmN0cmwtbmFtZXMg
PSAiZGVmYXVsdCI7Cj4gKwkJcGluY3RybC0wID0gPCZ2Y2MzdjNfcGNpZV9lbj47Cj4gKwkJcmVn
dWxhdG9yLW1pbi1taWNyb3ZvbHQgPSA8MzMwMDAwMD47Cj4gKwkJcmVndWxhdG9yLW1heC1taWNy
b3ZvbHQgPSA8MzMwMDAwMD47Cj4gKwkJdmluLXN1cHBseSA9IDwmZGNfMTJ2PjsKPiArCX07Cj4g
K307Cj4gKwo+ICsmcGNpZV9waHkgewo+ICsJc3RhdHVzID0gIm9rYXkiOwo+ICt9Owo+ICsKPiAr
JnBjaWUwIHsKPiArCWVwLWdwaW9zID0gPCZncGlvNCBSS19QRDEgR1BJT19BQ1RJVkVfSElHSD47
Cj4gKwludW0tbGFuZXMgPSA8ND47Cj4gKwlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+ICsJ
cGluY3RybC0wID0gPCZwY2llX3BlcnN0PjsKPiArCXZwY2llM3YzLXN1cHBseSA9IDwmdmNjM3Yz
X3BjaWU+Owo+ICsJdnBjaWUxdjgtc3VwcGx5ID0gPCZ2Y2MxdjhfcG11PjsKPiArCXZwY2llMHY5
LXN1cHBseSA9IDwmdmNjYV8wdjk+Owo+ICsJc3RhdHVzID0gIm9rYXkiOwo+ICt9Owo+ICsKPiAr
JnBpbmN0cmwgewo+ICsJbmdmZiB7Cj4gKwkJdmNjM3YzX25nZmZfZW46IHZjYzN2My1uZ2ZmLWVu
IHsKPiArCQkJcm9ja2NoaXAscGlucyA9IDw0IFJLX1BEMyBSS19GVU5DX0dQSU8gJnBjZmdfcHVs
bF9ub25lPjsKPiArCQl9Owo+ICsJfTsKPiArCj4gKwlwY2llIHsKPiArCQl2Y2MzdjNfcGNpZV9l
bjogdmNjM3YzLXBjaWUtZW4gewo+ICsJCQlyb2NrY2hpcCxwaW5zID0gPDEgUktfUEMxIFJLX0ZV
TkNfR1BJTyAmcGNmZ19wdWxsX25vbmU+Owo+ICsJCX07Cj4gKwo+ICsJCXBjaWVfcGVyc3Q6IHBj
aWUtcGVyc3Qgewo+ICsJCQlyb2NrY2hpcCxwaW5zID0gPDQgUktfUEQxIFJLX0ZVTkNfR1BJTyAm
cGNmZ19wdWxsX25vbmU+Owo+ICsJCX07Cj4gKwl9Owo+ICt9Owo+ICsKPiArJnNkaW8wIHsKPiAr
CWJ1cy13aWR0aCA9IDw0PjsKPiArCWNhcC1zZC1oaWdoc3BlZWQ7Cj4gKwljYXAtc2Rpby1pcnE7
Cj4gKwlrZWVwLXBvd2VyLWluLXN1c3BlbmQ7Cj4gKwltbWMtcHdyc2VxID0gPCZzZGlvX3B3cnNl
cT47Cj4gKwlub24tcmVtb3ZhYmxlOwo+ICsJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPiAr
CXBpbmN0cmwtMCA9IDwmc2RpbzBfYnVzNCAmc2RpbzBfY21kICZzZGlvMF9jbGs+Owo+ICsJc2Qt
dWhzLXNkcjEwNDsKPiArCXZtbWMtc3VwcGx5ID0gPCZ2Y2MzdjNfbmdmZj47Cj4gKwl2cW1tYy1z
dXBwbHkgPSA8JnZjY18xdjg+Owo+ICsJc3RhdHVzID0gIm9rYXkiOwo+ICt9Owo+ICsKPiArJnVh
cnQwIHsKPiArCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4gKwlwaW5jdHJsLTAgPSA8JnVh
cnQwX3hmZXIgJnVhcnQwX2N0cyAmdWFydDBfcnRzPjsKPiArCXN0YXR1cyA9ICJva2F5IjsKPiAr
fTsKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=
