Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC16D5A7E0
	for <lists+linux-rockchip@lfdr.de>; Sat, 29 Jun 2019 02:39:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FjdQ8ezLa+03hugQoclB1FyHatAGHAnFgQ1o4ezmhCg=; b=BcIz5133UAMfBi
	TBXD49k/qpz+L2ExJ63LVFXt54RdbS955SIvz9V1GSZQRWa6zao2bZimIpyv22mUWr47wg7w8OmwB
	sXmrtDcBPBhWIZCv1zuyH+XbLytwBscrg/x+Lp8/0f0xYMVnzD5X2k9DbnA4LptJXX0ddNy/ses/g
	pbXHHYcT3Roo6XKTK7Muk1Vg9X++Am7Bd6/eWV+K7rUMvtfdESYkRPOutnnl54wH99OiDKXWTmxtz
	JHLEb6nN/KQr9KdV23jjSdEaOehUlUxGGR2JSyXpgo7IUqaNMABgur17g1pc6BPALbDXnzkAnEG/b
	LwPlbX4K94Uy4K6qm1rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hh1Of-000480-30; Sat, 29 Jun 2019 00:39:17 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hh1O3-0003wq-To; Sat, 29 Jun 2019 00:38:42 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 93515285639
Message-ID: <f8f3565c18cc0c1ede107311dbe41df1a07da07b.camel@collabora.com>
Subject: Re: [PATCH v2] phy: rockchip-inno-usb2: allow to force the B-Device
 Session Valid bit.
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Heiko Stuebner <heiko@sntech.de>
Date: Fri, 28 Jun 2019 21:38:26 -0300
In-Reply-To: <7a205885f0599f04da067a7f41a14ee0b0d759f5.camel@collabora.com>
References: <20190515222050.15075-1-gael.portay@collabora.com>
 <7a205885f0599f04da067a7f41a14ee0b0d759f5.camel@collabora.com>
Organization: Collabora
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_173840_224973_64313DAC 
X-CRM114-Status: GOOD (  29.65  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 =?ISO-8859-1?Q?Ga=EBl?= PORTAY <gael.portay@collabora.com>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>, kernel@collabora.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SGkgSGVpa28sIEtpc2hvbiwKCkknbGwgdHJ5IHRvIHBpY2sgdXAgdGhpcyBwYXRjaC4KU29tZSBj
b21tZW50cyBiZWxvdywganVzdCBmb3Igc2VsZi1yZWZlcmVuY2UuCgpPbiBXZWQsIDIwMTktMDYt
MjYgYXQgMTI6MzIgLTAzMDAsIEV6ZXF1aWVsIEdhcmNpYSB3cm90ZToKPiBPbiBXZWQsIDIwMTkt
MDUtMTUgYXQgMTg6MjAgLTA0MDAsIEdhw6tsIFBPUlRBWSB3cm90ZToKPiA+IEZyb206IEVucmlj
IEJhbGxldGJvIGkgU2VycmEgPGVucmljLmJhbGxldGJvQGNvbGxhYm9yYS5jb20+Cj4gPiAKPiA+
IFRoZSBPVEcgZGlzY29ubmVjdGlvbiBldmVudCBpcyBnZW5lcmF0ZWQgYWZ0ZXIgdGhlIHByZXNl
bmNlL2Fic2VuY2Ugb2YKPiA+IGFuIElEIGNvbm5lY3Rpb24sIGJ1dCBzb21lIHBsYXRmb3JtcyBk
b24ndCBoYXZlIHRoZSBJRCBwaW4gY29ubmVjdGVkLCBzbwo+ID4gdGhlIGV2ZW50IGlzIG5vdCBn
ZW5lcmF0ZWQuIEluIHN1Y2ggY2FzZSwgZm9yIGRldGVjdGluZyB0aGUKPiA+IGRpc2Nvbm5lY3Rp
b24gZXZlbnQsIHdlIGNhbiBnZXQgdGhlIGNhYmxlIHN0YXRlIGZyb20gYW4gZXh0Y29uIGRyaXZl
ci4KPiA+IFdlIG5lZWQsIHRob3VnaCwgdG8gZm9yY2UgdG8gc2V0IHRoZSBCLURldmljZSBTZXNz
aW9uIFZhbGlkIGJpdCBvbiB0aGUKPiA+IFBIWSB0byBoYXZlIHRoZSBkZXZpY2UgcmVzcG9uZCB0
byB0aGUgc2V0dXAgYWRkcmVzcy4gT3RoZXJ3aXNlLCB0aGUKPiA+IGZvbGxvd2luZyBlcnJvciBp
cyBzaG93bjoKPiA+IAo+ID4gICAgIHVzYiAyLTI6IERldmljZSBub3QgcmVzcG9uZGluZyB0byBz
ZXR1cCBhZGRyZXNzLgo+ID4gICAgIHVzYiAyLTI6IGRldmljZSBub3QgYWNjZXB0aW5nIGFkZHJl
c3MgMTQsIGVycm9yIC03MQo+ID4gICAgIHVzYiB1c2IyLXBvcnQyOiB1bmFibGUgdG8gZW51bWVy
YXRlIFVTQiBkZXZpY2UKPiA+IAo+ID4gVGhlIHBhdGNoIHRlbGxzIHRoZSBQSFkgdG8gZm9yY2Ug
dGhlIEItRGV2aWNlIFNlc3Npb24gVmFsaWQgYml0IHdoZW4gdGhlCj4gPiBPVEcgcm9sZSBpcyBk
ZXZpY2UgYW5kIGNsZWFyIHRoYXQgYml0IGlmIHRoZSBPVEcgcm9sZSBpcyBob3N0LCB3aGVuIGFu
Cj4gPiBleHRjb24gaXMgYXZhaWxhYmxlLgo+ID4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBFbnJpYyBC
YWxsZXRibyBpIFNlcnJhIDxlbnJpYy5iYWxsZXRib0Bjb2xsYWJvcmEuY29tPgo+ID4gU2lnbmVk
LW9mZi1ieTogR2HDq2wgUE9SVEFZIDxnYWVsLnBvcnRheUBjb2xsYWJvcmEuY29tPgo+ID4gLS0t
Cj4gPiAKPiA+IEhpIGFsbCwKPiA+IAo+ID4gVGhlIG1haW4gcHVycG9zZSBvZiB0aGlzIHBhdGNo
IGlzIGhhdmUgdGhlIFR5cGUtQyBwb3J0IG9uIHRoZSBTYW1zdW5nCj4gPiBDaHJvbWVib29rIFBs
dXMgd29yayBhcyBhIGRldmljZSBvciBpbiBPVEcgbW9kZS4KPiA+IAo+ID4gVGhhdCBwYXRjaCB3
YXMgb3JpZ2luYWxseSBhIHBhcnQgb2YgdGhhdCBwYXRjaHNldFsxXTsgYWxsIG90aGVyIHBhdGNo
ZXMKPiA+IHdhcyBtZXJnZWQgcmVjZW50bHkgaW4gbWFzdGVyLgo+ID4gCj4gPiBUaGUgcGF0Y2gg
d2FzIHRlc3RlZCBvbiBhIFNhbXN1bmcgQ2hyb21lYm9vayBQbHVzIGJ5IGNvbmZpZ3VyaW5nIG9u
ZQo+ID4gcG9ydCB0byB3b3JrIGFzIGRldmljZSwgY29uZmlndXJlIGEgY2RjIGV0aGVybmV0IGdh
ZGdldCBhbmQgY29tbXVuaWNhdGUKPiA+IHZpYSBldGhlcm5ldCBnYWRnZXQgbXkgd29ya3N0YXRp
b24gd2l0aCB0aGUgY2hyb21lYm9vayB0aHJvdWdoIGEgdXNiLWEKPiA+IHRvIHR5cGUtYyBjYWJs
ZS4KPiA+IAo+ID4gQmVzdCByZWdhcmRzLAo+ID4gR2HDq2wKPiA+IAo+ID4gWzFdOiBodHRwczov
L2xrbWwub3JnL2xrbWwvMjAxOC84LzE1LzE0MQo+ID4gCgpXZSBzdGlsbCBuZWVkIHRoZSBhYm92
ZSBkZXZpY2V0cmVlIGNoYW5nZXMuCgo+ID4gQ2hhbmdlcyBzaW5jZSB2MToKPiA+ICAtIFtQQVRD
SCAzLzRdIFJlbW92ZSBpbnRyb2R1Y3Rpb24gb2YgZHQgcHJvcGVydHkgInJvY2tjaGlwLGZvcmNl
LWJ2YWxpZCIKPiA+ICAgICAgICAgICAgICAgIGFuZCByZXBsYWNlIGNhYmxlIHN0YXRlIHVzaW5n
IGV4dGNvbiBpbnN0ZWFkIChpZiBzZXQpLgo+ID4gCj4gPiAgZHJpdmVycy9waHkvcm9ja2NoaXAv
cGh5LXJvY2tjaGlwLWlubm8tdXNiMi5jIHwgNTEgKysrKysrKysrKysrKysrKysrKwo+ID4gIDEg
ZmlsZSBjaGFuZ2VkLCA1MSBpbnNlcnRpb25zKCspCj4gPiAKPiA+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtaW5uby11c2IyLmMgYi9kcml2ZXJzL3BoeS9y
b2NrY2hpcC9waHktcm9ja2NoaXAtaW5uby11c2IyLmMKPiA+IGluZGV4IGJhMDcxMjFjM2VmZi4u
NWU5ZDUwYjVhZTE2IDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJv
Y2tjaGlwLWlubm8tdXNiMi5jCj4gPiArKysgYi9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9j
a2NoaXAtaW5uby11c2IyLmMKPiA+IEBAIC0xMjUsNiArMTI1LDcgQEAgc3RydWN0IHJvY2tjaGlw
X2NoZ19kZXRfcmVnIHsKPiA+ICAgKiBAYnZhbGlkX2RldF9lbjogdmJ1cyB2YWxpZCByaXNlIGRl
dGVjdGlvbiBlbmFibGUgcmVnaXN0ZXIuCj4gPiAgICogQGJ2YWxpZF9kZXRfc3Q6IHZidXMgdmFs
aWQgcmlzZSBkZXRlY3Rpb24gc3RhdHVzIHJlZ2lzdGVyLgo+ID4gICAqIEBidmFsaWRfZGV0X2Ns
cjogdmJ1cyB2YWxpZCByaXNlIGRldGVjdGlvbiBjbGVhciByZWdpc3Rlci4KPiA+ICsgKiBAYnZh
bGlkX3Nlc3Npb246IGZvcmNlIEItZGV2aWNlIHNlc3Npb24gdmFsaWQgcmVnaXN0ZXIuCj4gPiAg
ICogQGxzX2RldF9lbjogbGluZXN0YXRlIGRldGVjdGlvbiBlbmFibGUgcmVnaXN0ZXIuCj4gPiAg
ICogQGxzX2RldF9zdDogbGluZXN0YXRlIGRldGVjdGlvbiBzdGF0ZSByZWdpc3Rlci4KPiA+ICAg
KiBAbHNfZGV0X2NscjogbGluZXN0YXRlIGRldGVjdGlvbiBjbGVhciByZWdpc3Rlci4KPiA+IEBA
IC0xMzgsNiArMTM5LDcgQEAgc3RydWN0IHJvY2tjaGlwX3VzYjJwaHlfcG9ydF9jZmcgewo+ID4g
IAlzdHJ1Y3QgdXNiMnBoeV9yZWcJYnZhbGlkX2RldF9lbjsKPiA+ICAJc3RydWN0IHVzYjJwaHlf
cmVnCWJ2YWxpZF9kZXRfc3Q7Cj4gPiAgCXN0cnVjdCB1c2IycGh5X3JlZwlidmFsaWRfZGV0X2Ns
cjsKPiA+ICsJc3RydWN0IHVzYjJwaHlfcmVnCWJ2YWxpZF9zZXNzaW9uOwo+ID4gIAlzdHJ1Y3Qg
dXNiMnBoeV9yZWcJbHNfZGV0X2VuOwo+ID4gIAlzdHJ1Y3QgdXNiMnBoeV9yZWcJbHNfZGV0X3N0
Owo+ID4gIAlzdHJ1Y3QgdXNiMnBoeV9yZWcJbHNfZGV0X2NscjsKPiA+IEBAIC0xNjksNiArMTcx
LDcgQEAgc3RydWN0IHJvY2tjaGlwX3VzYjJwaHlfY2ZnIHsKPiA+ICAgKiBAcG9ydF9pZDogZmxh
ZyBmb3Igb3RnIHBvcnQgb3IgaG9zdCBwb3J0Lgo+ID4gICAqIEBzdXNwZW5kZWQ6IHBoeSBzdXNw
ZW5kZWQgZmxhZy4KPiA+ICAgKiBAdmJ1c19hdHRhY2hlZDogb3RnIGRldmljZSB2YnVzIHN0YXR1
cy4KPiA+ICsgKiBAZm9yY2VfYnZhbGlkOiBmb3JjZSB0aGUgY29udHJvbCBvZiB0aGUgQi1kZXZp
Y2Ugc2Vzc2lvbiB2YWxpZCBiaXQuCj4gPiAgICogQGJ2YWxpZF9pcnE6IElSUSBudW1iZXIgYXNz
aWduZWQgZm9yIHZidXMgdmFsaWQgcmlzZSBkZXRlY3Rpb24uCj4gPiAgICogQGxzX2lycTogSVJR
IG51bWJlciBhc3NpZ25lZCBmb3IgbGluZXN0YXRlIGRldGVjdGlvbi4KPiA+ICAgKiBAb3RnX211
eF9pcnE6IElSUSBudW1iZXIgd2hpY2ggbXVsdGlwbGV4IG90Zy1pZC9vdGctYnZhbGlkL2xpbmVz
dGF0ZQo+ID4gQEAgLTE4Nyw2ICsxOTAsNyBAQCBzdHJ1Y3Qgcm9ja2NoaXBfdXNiMnBoeV9wb3J0
IHsKPiA+ICAJdW5zaWduZWQgaW50CXBvcnRfaWQ7Cj4gPiAgCWJvb2wJCXN1c3BlbmRlZDsKPiA+
ICAJYm9vbAkJdmJ1c19hdHRhY2hlZDsKPiA+ICsJYm9vbAkJZm9yY2VfYnZhbGlkOwo+ID4gIAlp
bnQJCWJ2YWxpZF9pcnE7Cj4gPiAgCWludAkJbHNfaXJxOwo+ID4gIAlpbnQJCW90Z19tdXhfaXJx
Owo+ID4gQEAgLTU1Myw2ICs1NTcsMTMgQEAgc3RhdGljIHZvaWQgcm9ja2NoaXBfdXNiMnBoeV9v
dGdfc21fd29yayhzdHJ1Y3Qgd29ya19zdHJ1Y3QgKndvcmspCj4gPiAgCXN3aXRjaCAocnBvcnQt
PnN0YXRlKSB7Cj4gPiAgCWNhc2UgT1RHX1NUQVRFX1VOREVGSU5FRDoKPiA+ICAJCXJwb3J0LT5z
dGF0ZSA9IE9UR19TVEFURV9CX0lETEU7Cj4gPiArCQlpZiAocnBvcnQtPmZvcmNlX2J2YWxpZCkg
ewo+ID4gKwkJCXByb3BlcnR5X2VuYWJsZShycGh5LT5ncmYsCj4gPiArCQkJCQkmcnBvcnQtPnBv
cnRfY2ZnLT5idmFsaWRfc2Vzc2lvbiwKPiA+ICsJCQkJCXRydWUpOwo+ID4gKwkJCWRldl9kYmco
JnJwb3J0LT5waHktPmRldiwKPiA+ICsJCQkJInNldCB0aGUgQi1EZXZpY2UgU2Vzc2lvbiBWYWxp
ZFxuIik7Cj4gPiArCQl9Cj4gPiAgCQlpZiAoIXZidXNfYXR0YWNoKQo+ID4gIAkJCXJvY2tjaGlw
X3VzYjJwaHlfcG93ZXJfb2ZmKHJwb3J0LT5waHkpOwo+ID4gIAkJLyogZmFsbCB0aHJvdWdoICov
Cj4gPiBAQCAtNTYwLDYgKzU3MSwxNCBAQCBzdGF0aWMgdm9pZCByb2NrY2hpcF91c2IycGh5X290
Z19zbV93b3JrKHN0cnVjdCB3b3JrX3N0cnVjdCAqd29yaykKPiA+ICAJCWlmIChleHRjb25fZ2V0
X3N0YXRlKHJwaHktPmVkZXYsIEVYVENPTl9VU0JfSE9TVCkgPiAwKSB7Cj4gPiAgCQkJZGV2X2Ri
ZygmcnBvcnQtPnBoeS0+ZGV2LCAidXNiIG90ZyBob3N0IGNvbm5lY3RcbiIpOwo+ID4gIAkJCXJw
b3J0LT5zdGF0ZSA9IE9UR19TVEFURV9BX0hPU1Q7Cj4gPiArCQkJLyogV2hlbiBsZWF2aW5nIGRl
dmljZSBtb2RlIGZvcmNlIGVuZCB0aGUgc2Vzc2lvbiAqLwo+ID4gKwkJCWlmIChycG9ydC0+Zm9y
Y2VfYnZhbGlkKSB7Cj4gPiArCQkJCXByb3BlcnR5X2VuYWJsZShycGh5LT5ncmYsCj4gPiArCQkJ
CQkmcnBvcnQtPnBvcnRfY2ZnLT5idmFsaWRfc2Vzc2lvbiwKPiA+ICsJCQkJCWZhbHNlKTsKPiA+
ICsJCQkJZGV2X2RiZygmcnBvcnQtPnBoeS0+ZGV2LAo+ID4gKwkJCQkJImNsZWFyIHRoZSBCLURl
dmljZSBTZXNzaW9uIFZhbGlkXG4iKTsKPiA+ICsJCQl9Cj4gPiAgCQkJcm9ja2NoaXBfdXNiMnBo
eV9wb3dlcl9vbihycG9ydC0+cGh5KTsKPiA+ICAJCQlyZXR1cm47Cj4gPiAgCQl9IGVsc2UgaWYg
KHZidXNfYXR0YWNoKSB7Cj4gPiBAQCAtNjM0LDYgKzY1MywxNCBAQCBzdGF0aWMgdm9pZCByb2Nr
Y2hpcF91c2IycGh5X290Z19zbV93b3JrKHN0cnVjdCB3b3JrX3N0cnVjdCAqd29yaykKPiA+ICAJ
CWlmIChleHRjb25fZ2V0X3N0YXRlKHJwaHktPmVkZXYsIEVYVENPTl9VU0JfSE9TVCkgPT0gMCkg
ewo+ID4gIAkJCWRldl9kYmcoJnJwb3J0LT5waHktPmRldiwgInVzYiBvdGcgaG9zdCBkaXNjb25u
ZWN0XG4iKTsKPiA+ICAJCQlycG9ydC0+c3RhdGUgPSBPVEdfU1RBVEVfQl9JRExFOwo+ID4gKwkJ
CS8qIFdoZW4gbGVhdmluZyBob3N0IG1vZGUgZm9yY2Ugc3RhcnQgdGhlIHNlc3Npb24gKi8KPiA+
ICsJCQlpZiAocnBvcnQtPmZvcmNlX2J2YWxpZCkgewo+ID4gKwkJCQlwcm9wZXJ0eV9lbmFibGUo
cnBoeS0+Z3JmLAo+ID4gKwkJCQkJJnJwb3J0LT5wb3J0X2NmZy0+YnZhbGlkX3Nlc3Npb24sCj4g
PiArCQkJCQl0cnVlKTsKPiA+ICsJCQkJZGV2X2RiZygmcnBvcnQtPnBoeS0+ZGV2LAo+ID4gKwkJ
CQkJInNldCB0aGUgQi1EZXZpY2UgU2Vzc2lvbiBWYWxpZFxuIik7Cj4gPiArCQkJfQo+ID4gIAkJ
CXJvY2tjaGlwX3VzYjJwaHlfcG93ZXJfb2ZmKHJwb3J0LT5waHkpOwo+ID4gIAkJfQo+ID4gIAkJ
YnJlYWs7Cj4gPiBAQCAtMTAxNiw2ICsxMDQzLDI4IEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfdXNi
MnBoeV9vdGdfcG9ydF9pbml0KHN0cnVjdCByb2NrY2hpcF91c2IycGh5ICpycGh5LAo+ID4gIAlJ
TklUX0RFTEFZRURfV09SSygmcnBvcnQtPmNoZ193b3JrLCByb2NrY2hpcF9jaGdfZGV0ZWN0X3dv
cmspOwo+ID4gIAlJTklUX0RFTEFZRURfV09SSygmcnBvcnQtPm90Z19zbV93b3JrLCByb2NrY2hp
cF91c2IycGh5X290Z19zbV93b3JrKTsKPiA+ICAKPiA+ICsJLyoKPiA+ICsJICogU29tZSBwbGF0
Zm9ybXMgZG9lc24ndCBoYXZlIHRoZSBJRCBwaW4gY29ubmVjdGVkIHRvIHRoZSBwaHksIGhlbmNl
Cj4gPiArCSAqIHRoZSBPVEQgSUQgZXZlbnQgaXMgbm90IGdlbmVyYXRlZCwgYnV0IGluIHNvbWUg
Y2FzZXMgd2UgY2FuIGdldCB0aGUKPiA+ICsJICogY2FibGUgc3RhdGUgZnJvbSBhbiBleHRjb24g
ZHJpdmVyLiBJbiBzdWNoIGNhc2Ugd2UgY2FuIGZvcmNlIHRvIHNldAo+ID4gKwkgKiB0aGUgQi1E
ZXZpY2UgU2Vzc2lvbiBWYWxpZCBiaXQgb24gdGhlIFBIWSB0byBoYXZlIHRoZSBkZXZpY2Ugd29y
a2luZwo+ID4gKwkgKiBhcyBhIE9URy4KPiA+ICsJICovCj4gPiArCWlmIChycGh5LT5lZGV2KSB7
CgpJIG1pZ2h0IGJlIG1pc3Npbmcgc29tZXRoaW5nLCBidXQgdGhpcyBjaGVjayBzZWVtcyBib2d1
cy4KCmVkZXYgY2FuJ3QgYmUgTlVMTCBhcyB0aGUgZHJpdmVyIGNyZWF0ZXMgYW4gZXh0Y29uIGlm
CnRoZXJlIGlzIG5vbmUgYXNzaWduZWQgaW4gdGhlIGRldmljZXRyZWUuCgo+ID4gKwkJLyoKPiA+
ICsJCSAqIENoZWNrIGlmIGJ2YWxpZF9zZXNzaW9uIHJlZ2lzdGVyIGlzIHNldCBpbiB0aGUgc3Ry
dWN0dXJlCj4gPiArCQkgKiByb2NrY2hpcF91c2IycGh5X2NmZyBmb3IgdGhpcyBTb0MuCj4gPiAr
CQkgKi8KPiA+ICsJCWlmIChycG9ydC0+cG9ydF9jZmctPmJ2YWxpZF9zZXNzaW9uLm9mZnNldCA9
PSAweDApIHsKPiA+ICsJCQlycG9ydC0+Zm9yY2VfYnZhbGlkID0gZmFsc2U7Cj4gPiArCQkJZGV2
X2VycihycGh5LT5kZXYsCj4gPiArCQkJCSJjYW5ub3QgZm9yY2UgQi1kZXZpY2Ugc2Vzc2lvbiwg
dGhlIHJlZ2lzdGVyIGlzIG5vdCBzZXQgZm9yIHRoYXQgU29DXG4iKTsKPiA+ICsJCX0gZWxzZSB7
Cj4gPiArCQkJcnBvcnQtPmZvcmNlX2J2YWxpZCA9IHRydWU7Cj4gPiArCQkJZGV2X2luZm8ocnBo
eS0+ZGV2LCAiZm9yY2UgQi1kZXZpY2Ugc2Vzc2lvbiBlbmFibGVkXG4iKTsKPiA+ICsJCX0KCkkg
dGhpbmsgd2Ugc2hvdWxkIGJlIGRvaW5nIHNvbWV0aGluZyBtb3JlIGxpa2U6CgppZiAoSEFTX1JF
RyhycG9ydC0+cG9ydF9jZmctPmJ2YWxpZF9zZXNzaW9uKSkgewoJcnBvcnQtPmZvcmNlX2J2YWxp
ZCA9IHRydWU7CglkZXZfaW5mbyhycGh5LT5kZXYsICJmb3JjZSBCLWRldmljZSBzZXNzaW9uIGVu
YWJsZWRcbiIpOwp9CgpBbmQgbm90IGVycm9yIHZlcmJvc2VseSBvbiBwbGF0Zm9ybXMgdGhhdCBk
b24ndApjYXJlIGFib3V0IHRoaXMuCiAKVGhhbmtzLApFemVxdWllbAoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
