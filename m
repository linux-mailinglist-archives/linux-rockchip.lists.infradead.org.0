Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DBBB6A309
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 09:36:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PGqyLI37JcqI0dKhxxFlIBSyqQ+ML6ViaU9Q5ec644I=; b=GckhSniRCouIv9DFXa4iihwgm
	L0pJQUBCY0514XsXcvqdZiHn7KtJvTSR9zTJqBC/aZQvOaSXa5rBCeFTJ1yMKQSul8i5jh0FvPuVC
	qhbjs9sBp8vJpKKGQs3+XxfZVUqtZLFhuALTqzAAhJBMNL2TZNv/aPSKOrPGahWuVXYMu+fhhBm0f
	3cWNjJNqXxmlwXLbKYmKq9NlMsUcGKxHGYXLR9rA4wclIcEwzkwn9gJV5c0DcIdHMxl77HFgvPIie
	kDxWczL9lAwiMPI0qK8dzekVkGlPELLakswA491l5OYSVmqpmA9a9K/AJGUv4SQ06DMuCIs7C0lq5
	cwUQStHVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnI0k-00050H-CW; Tue, 16 Jul 2019 07:36:30 +0000
Received: from regular1.263xmail.com ([211.150.70.203])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnI0e-0004ze-Jc
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 07:36:28 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.167.190])
 by regular1.263xmail.com (Postfix) with ESMTP id 0A5A341F;
 Tue, 16 Jul 2019 15:36:23 +0800 (CST)
X-263anti-spam: KSV:0;BIG:0;
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-KSVirus-check: 0
X-ADDR-CHECKED4: 1
X-ABS-CHECKED: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from [172.16.12.9] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P26217T140226200577792S1563262579783125_; 
 Tue, 16 Jul 2019 15:36:21 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <d85efef078d79964bcd70acd2ca57aad>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v3 01/18] ram: rk3399: Handle data training return types
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 YouMin Chen <cym@rock-chips.com>, u-boot@lists.denx.de
References: <20190715182856.21688-1-jagan@amarulasolutions.com>
 <20190715182856.21688-2-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <a91f7bea-1908-a84f-9e90-c7333c5334f9@rock-chips.com>
Date: Tue, 16 Jul 2019 15:36:19 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190715182856.21688-2-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_003627_154218_C85B0C60 
X-CRM114-Status: GOOD (  16.51  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.203 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
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
Cc: linux-rockchip@lists.infradead.org, gajjar04akash@gmail.com,
 linux-amarula@amarulasolutions.com,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Ck9uIDIwMTkvNy8xNiDkuIrljYgyOjI4LCBKYWdhbiBUZWtpIHdyb3RlOgo+IGRhdGEgdHJhaW5p
bmdzIGNhbGxzIGxpa2UgY2EsIHdsLCByZywgcmwsIHdkcWwgaGF2ZSBwcm9wZXIKPiByZXR1cm4g
dHlwZXMgd2l0aCAtRUlPIGFuZCB0aGUgcmV0dXJuIHR5cGUgbWlzc2VkIHRvIGhhbmRsZQo+IGlu
IGRhdGFfdHJhaW5pbmcgZnVuY3Rpb24uCj4KPiBUaGlzIHBhdGNoLCBhZGQgcHJvcGVyIHJldHVy
biB0eXBlIGNoZWNrcyBhbG9uZyB3aXRoIHVzZWZ1bAo+IGRlYnVnIHN0YXRlbWVudCBvbiBlYWNo
IGRhdGEgdHJhaW5pbmcgY2FsbHMuCj4KPiBJbmNpZGVudGFsbHkgdGhpcyB3b3VsZCBoZWxwIHRv
IHByZXZlbnQgdGhlIHNkcmFtIGluaXRpYWxpemF0aW9uCj4gaGFuZyBmb3Igc2luZ2xlIGNoYW5u
ZWwgZHJhbSBhbmQgd2hlbiB0aGUgY29kZSBpcyB0cnlpbmcgdG8KPiBpbml0aWFsaXplIHNlY29u
ZCBjaGFubmVsIHdpdGggcHJvcGVyIHJldHVybiB0eXBlIG9mIHJlbGV2YW50Cj4gZGF0YSB0cmFp
bmluZyBjYWxsIG1pZ2h0IGZhaWxlZC4KPgo+IFNpZ25lZC1vZmYtYnk6IEphZ2FuIFRla2kgPGph
Z2FuQGFtYXJ1bGFzb2x1dGlvbnMuY29tPgoKUmV2aWV3ZWQtYnk6IEtldmVyIFlhbmcgPEtldmVy
LnlhbmdAcm9jay1jaGlwcy5jb20+CgpUaGFua3MsCiDCoC0gS2V2ZXIKPiAtLS0KPiAgIGRyaXZl
cnMvcmFtL3JvY2tjaGlwL3NkcmFtX3JrMzM5OS5jIHwgNTAgKysrKysrKysrKysrKysrKysrKysr
Ky0tLS0tLS0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAzOCBpbnNlcnRpb25zKCspLCAxMiBkZWxldGlv
bnMoLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3JhbS9yb2NrY2hpcC9zZHJhbV9yazMzOTku
YyBiL2RyaXZlcnMvcmFtL3JvY2tjaGlwL3NkcmFtX3JrMzM5OS5jCj4gaW5kZXggNDkyYjA5NzVk
ZC4uZTljMGZkZjJkNCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3JhbS9yb2NrY2hpcC9zZHJhbV9y
azMzOTkuYwo+ICsrKyBiL2RyaXZlcnMvcmFtL3JvY2tjaGlwL3NkcmFtX3JrMzM5OS5jCj4gQEAg
LTg4Nyw2ICs4ODcsNyBAQCBzdGF0aWMgaW50IGRhdGFfdHJhaW5pbmcoY29uc3Qgc3RydWN0IGNo
YW5faW5mbyAqY2hhbiwgdTMyIGNoYW5uZWwsCj4gICAJCQkgdTMyIHRyYWluaW5nX2ZsYWcpCj4g
ICB7Cj4gICAJdTMyICpkZW5hbGlfcGh5ID0gY2hhbi0+cHVibC0+ZGVuYWxpX3BoeTsKPiArCWlu
dCByZXQ7Cj4gICAKPiAgIAkvKiBQSFlfOTI3IFBIWV9QQURfRFFTX0RSSVZFICBSUFVMTCBvZmZz
ZXRfMjIgKi8KPiAgIAlzZXRiaXRzX2xlMzIoJmRlbmFsaV9waHlbOTI3XSwgKDEgPDwgMjIpKTsK
PiBAQCAtOTA3LDI0ICs5MDgsNDkgQEAgc3RhdGljIGludCBkYXRhX3RyYWluaW5nKGNvbnN0IHN0
cnVjdCBjaGFuX2luZm8gKmNoYW4sIHUzMiBjaGFubmVsLAo+ICAgCX0KPiAgIAo+ICAgCS8qIGNh
IHRyYWluaW5nKExQRERSNCxMUEREUjMgc3VwcG9ydCkgKi8KPiAtCWlmICgodHJhaW5pbmdfZmxh
ZyAmIFBJX0NBX1RSQUlOSU5HKSA9PSBQSV9DQV9UUkFJTklORykKPiAtCQlkYXRhX3RyYWluaW5n
X2NhKGNoYW4sIGNoYW5uZWwsIHBhcmFtcyk7Cj4gKwlpZiAoKHRyYWluaW5nX2ZsYWcgJiBQSV9D
QV9UUkFJTklORykgPT0gUElfQ0FfVFJBSU5JTkcpIHsKPiArCQlyZXQgPSBkYXRhX3RyYWluaW5n
X2NhKGNoYW4sIGNoYW5uZWwsIHBhcmFtcyk7Cj4gKwkJaWYgKHJldCA8IDApIHsKPiArCQkJZGVi
dWcoIiVzOiBkYXRhIHRyYWluaW5nIGNhIGZhaWxlZFxuIiwgX19mdW5jX18pOwo+ICsJCQlyZXR1
cm4gcmV0Owo+ICsJCX0KPiArCX0KPiAgIAo+ICAgCS8qIHdyaXRlIGxldmVsaW5nKExQRERSNCxM
UEREUjMsRERSMyBzdXBwb3J0KSAqLwo+IC0JaWYgKCh0cmFpbmluZ19mbGFnICYgUElfV1JJVEVf
TEVWRUxJTkcpID09IFBJX1dSSVRFX0xFVkVMSU5HKQo+IC0JCWRhdGFfdHJhaW5pbmdfd2woY2hh
biwgY2hhbm5lbCwgcGFyYW1zKTsKPiArCWlmICgodHJhaW5pbmdfZmxhZyAmIFBJX1dSSVRFX0xF
VkVMSU5HKSA9PSBQSV9XUklURV9MRVZFTElORykgewo+ICsJCXJldCA9IGRhdGFfdHJhaW5pbmdf
d2woY2hhbiwgY2hhbm5lbCwgcGFyYW1zKTsKPiArCQlpZiAocmV0IDwgMCkgewo+ICsJCQlkZWJ1
ZygiJXM6IGRhdGEgdHJhaW5pbmcgd2wgZmFpbGVkXG4iLCBfX2Z1bmNfXyk7Cj4gKwkJCXJldHVy
biByZXQ7Cj4gKwkJfQo+ICsJfQo+ICAgCj4gICAJLyogcmVhZCBnYXRlIHRyYWluaW5nKExQRERS
NCxMUEREUjMsRERSMyBzdXBwb3J0KSAqLwo+IC0JaWYgKCh0cmFpbmluZ19mbGFnICYgUElfUkVB
RF9HQVRFX1RSQUlOSU5HKSA9PSBQSV9SRUFEX0dBVEVfVFJBSU5JTkcpCj4gLQkJZGF0YV90cmFp
bmluZ19yZyhjaGFuLCBjaGFubmVsLCBwYXJhbXMpOwo+ICsJaWYgKCh0cmFpbmluZ19mbGFnICYg
UElfUkVBRF9HQVRFX1RSQUlOSU5HKSA9PSBQSV9SRUFEX0dBVEVfVFJBSU5JTkcpIHsKPiArCQly
ZXQgPSBkYXRhX3RyYWluaW5nX3JnKGNoYW4sIGNoYW5uZWwsIHBhcmFtcyk7Cj4gKwkJaWYgKHJl
dCA8IDApIHsKPiArCQkJZGVidWcoIiVzOiBkYXRhIHRyYWluaW5nIHJnIGZhaWxlZFxuIiwgX19m
dW5jX18pOwo+ICsJCQlyZXR1cm4gcmV0Owo+ICsJCX0KPiArCX0KPiAgIAo+ICAgCS8qIHJlYWQg
bGV2ZWxpbmcoTFBERFI0LExQRERSMyxERFIzIHN1cHBvcnQpICovCj4gLQlpZiAoKHRyYWluaW5n
X2ZsYWcgJiBQSV9SRUFEX0xFVkVMSU5HKSA9PSBQSV9SRUFEX0xFVkVMSU5HKQo+IC0JCWRhdGFf
dHJhaW5pbmdfcmwoY2hhbiwgY2hhbm5lbCwgcGFyYW1zKTsKPiArCWlmICgodHJhaW5pbmdfZmxh
ZyAmIFBJX1JFQURfTEVWRUxJTkcpID09IFBJX1JFQURfTEVWRUxJTkcpIHsKPiArCQlyZXQgPSBk
YXRhX3RyYWluaW5nX3JsKGNoYW4sIGNoYW5uZWwsIHBhcmFtcyk7Cj4gKwkJaWYgKHJldCA8IDAp
IHsKPiArCQkJZGVidWcoIiVzOiBkYXRhIHRyYWluaW5nIHJsIGZhaWxlZFxuIiwgX19mdW5jX18p
Owo+ICsJCQlyZXR1cm4gcmV0Owo+ICsJCX0KPiArCX0KPiAgIAo+ICAgCS8qIHdkcSBsZXZlbGlu
ZyhMUEREUjQgc3VwcG9ydCkgKi8KPiAtCWlmICgodHJhaW5pbmdfZmxhZyAmIFBJX1dEUV9MRVZF
TElORykgPT0gUElfV0RRX0xFVkVMSU5HKQo+IC0JCWRhdGFfdHJhaW5pbmdfd2RxbChjaGFuLCBj
aGFubmVsLCBwYXJhbXMpOwo+ICsJaWYgKCh0cmFpbmluZ19mbGFnICYgUElfV0RRX0xFVkVMSU5H
KSA9PSBQSV9XRFFfTEVWRUxJTkcpIHsKPiArCQlyZXQgPSBkYXRhX3RyYWluaW5nX3dkcWwoY2hh
biwgY2hhbm5lbCwgcGFyYW1zKTsKPiArCQlpZiAocmV0IDwgMCkgewo+ICsJCQlkZWJ1ZygiJXM6
IGRhdGEgdHJhaW5pbmcgd2RxbCBmYWlsZWRcbiIsIF9fZnVuY19fKTsKPiArCQkJcmV0dXJuIHJl
dDsKPiArCQl9Cj4gKwl9Cj4gICAKPiAgIAkvKiBQSFlfOTI3IFBIWV9QQURfRFFTX0RSSVZFICBS
UFVMTCBvZmZzZXRfMjIgKi8KPiAgIAljbHJiaXRzX2xlMzIoJmRlbmFsaV9waHlbOTI3XSwgKDEg
PDwgMjIpKTsKPiBAQCAtMTA2Miw3ICsxMDg4LDcgQEAgc3RhdGljIGludCBzd2l0Y2hfdG9fcGh5
X2luZGV4MShzdHJ1Y3QgZHJhbV9pbmZvICpkcmFtLAo+ICAgCQljbHJzZXRiaXRzX2xlMzIoJmRl
bmFsaV9waHlbODk2XSwgKDB4MyA8PCA4KSB8IDEsIDEgPDwgOCk7Cj4gICAJCXJldCA9IGRhdGFf
dHJhaW5pbmcoJmRyYW0tPmNoYW5bY2hhbm5lbF0sIGNoYW5uZWwsCj4gICAJCQkJICAgIHBhcmFt
cywgUElfRlVMTF9UUkFJTklORyk7Cj4gLQkJaWYgKHJldCkgewo+ICsJCWlmIChyZXQgPCAwKSB7
Cj4gICAJCQlkZWJ1ZygiaW5kZXgxIHRyYWluaW5nIGZhaWxlZFxuIik7Cj4gICAJCQlyZXR1cm4g
cmV0Owo+ICAgCQl9Cj4gQEAgLTExMDgsNyArMTEzNCw3IEBAIHN0YXRpYyBpbnQgc2RyYW1faW5p
dChzdHJ1Y3QgZHJhbV9pbmZvICpkcmFtLAo+ICAgCQkJdWRlbGF5KDEwKTsKPiAgIAo+ICAgCQlp
ZiAoZGF0YV90cmFpbmluZyhjaGFuLCBjaGFubmVsLCBwYXJhbXMsIFBJX0ZVTExfVFJBSU5JTkcp
KSB7Cj4gLQkJCXByaW50ZigiU0RSQU0gaW5pdGlhbGl6YXRpb24gZmFpbGVkLCByZXNldFxuIik7
Cj4gKwkJCXByaW50ZigiJXM6IGRhdGEgdHJhaW5pbmcgZmFpbGVkXG4iLCBfX2Z1bmNfXyk7Cj4g
ICAJCQlyZXR1cm4gLUVJTzsKPiAgIAkJfQo+ICAgCgoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51
eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
