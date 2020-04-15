Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 323D61AAF8E
	for <lists+linux-rockchip@lfdr.de>; Wed, 15 Apr 2020 19:30:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zxLHk01H7FdOiUKnFasubrR98wmzWOSmfNq9PwWMY9I=; b=hU4WPp7kJM2vV6
	Vqi/FgkrWN1V4FM/H3hctorubnyUu6oYhCD/sdBgXGUeb9ZsvJfE9ys45+DkeoImFWvzY3DRx8mL6
	FHjjU3kAJk0leJSgmFx9SaX3LcBpA1HWESfL4NokXmfjMFmgJJ4PyhO87zsk5Rvks1ZZ5pZj1MpHU
	cONWavlOss1dulGUQ/8UWq6iQnq4iIG4DcXa8w483cj9ZkRYrOllMaCYRrArbyvJufBMl2NqoRNtP
	i283oP2/Ailx7snTUPyV5xDsVMB4HqquDZFYuB4ZQ8bArGqn4J0vltX5f7Jgr+kQWhpdMzBXXu5XQ
	sm7fQE+ZaOMnVGeOUJpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOls7-0002bd-8F; Wed, 15 Apr 2020 17:30:47 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOlru-0002R8-5V; Wed, 15 Apr 2020 17:30:38 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 203D52D1;
 Wed, 15 Apr 2020 19:30:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1586971830;
 bh=tQThVv8JePQJlsLsQ9w8O2FlrA4U4Rc55Az4j5aZGB4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=sR7vFTYCKoV9jHVKhTXn5RNWye/bgIctDTra7yZBkSUUgWOpncgCOBCj0ENWaiZLT
 rv/O9cFNi11VlWTY4wrA8HmWyz3ap/6iiDu3PEmNv+L1jOS0fgeboKPBPyRn0txVxO
 S1yRnDl7mxs2Ctsz5kOYJCIaER5qUfya2B/WyHxs=
Date: Wed, 15 Apr 2020 20:30:18 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Enric Balletbo Serra <eballetbo@gmail.com>
Subject: Re: [PATCH v6 4/8] drm: imx: Add i.MX 6 MIPI DSI host platform driver
Message-ID: <20200415173018.GK4758@pendragon.ideasonboard.com>
References: <20200414151955.311949-1-adrian.ratiu@collabora.com>
 <20200414151955.311949-5-adrian.ratiu@collabora.com>
 <CAFqH_51ZZTd6iK+G1QdqfBedxyG-A=HwPjY1kdOuWTqd7niTHQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFqH_51ZZTd6iK+G1QdqfBedxyG-A=HwPjY1kdOuWTqd7niTHQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_103036_017838_711ACF11 
X-CRM114-Status: GOOD (  29.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Jernej Skrabec <jernej.skrabec@siol.net>, Adrian Pop <pop.adrian61@gmail.com>,
 Jonas Karlman <jonas@kwiboo.se>, Martyn Welch <martyn.welch@collabora.com>,
 Adrian Ratiu <adrian.ratiu@collabora.com>,
 Sjoerd Simons <sjoerd.simons@collabora.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Andrzej Hajda <a.hajda@samsung.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 linux-imx@nxp.com, Arnaud Ferraris <arnaud.ferraris@collabora.com>,
 Collabora Kernel ML <kernel@collabora.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Emil Velikov <emil.velikov@collabora.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SGkgRW5yaWMsCgpPbiBXZWQsIEFwciAxNSwgMjAyMCBhdCAwNzoyNjowMlBNICswMjAwLCBFbnJp
YyBCYWxsZXRibyBTZXJyYSB3cm90ZToKPiBNaXNzYXRnZSBkZSBBZHJpYW4gUmF0aXUgPGFkcmlh
bi5yYXRpdUBjb2xsYWJvcmEuY29tPiBkZWwgZGlhIGR0LiwgMTQKPiBk4oCZYWJyLiAyMDIwIGEg
bGVzIDE3OjE5Ogo+ID4KPiA+IFRoaXMgYWRkcyBzdXBwb3J0IGZvciB0aGUgU3lub3BzaXMgRGVz
aWduV2FyZSBNSVBJIERTSSB2MS4wMSBob3N0Cj4gPiBjb250cm9sbGVyIHdoaWNoIGlzIGVtYmVk
ZGVkIGluIGkuTVggNiBTb0NzLgo+ID4KPiA+IEJhc2VkIG9uIGZvbGxvd2luZyBwYXRjaGVzLCBi
dXQgdXBkYXRlZC9leHRlbmRlZCB0byB3b3JrIHdpdGggZXhpc3RpbmcKPiA+IHN1cHBvcnQgZm91
bmQgaW4gdGhlIGtlcm5lbDoKPiA+Cj4gPiAtIGRybTogaW14OiBTdXBwb3J0IFN5bm9wc3lzIERl
c2lnbldhcmUgTUlQSSBEU0kgaG9zdCBjb250cm9sbGVyCj4gPiAgIFNpZ25lZC1vZmYtYnk6IExp
dSBZaW5nIDxZaW5nLkxpdUBmcmVlc2NhbGUuY29tPgo+ID4KPiA+IENjOiBGYWJpbyBFc3RldmFt
IDxmZXN0ZXZhbUBnbWFpbC5jb20+Cj4gPiBSZXZpZXdlZC1ieTogRW1pbCBWZWxpa292IDxlbWls
LnZlbGlrb3ZAY29sbGFib3JhLmNvbT4KPiA+IFRlc3RlZC1ieTogQWRyaWFuIFBvcCA8cG9wLmFk
cmlhbjYxQGdtYWlsLmNvbT4KPiA+IFRlc3RlZC1ieTogQXJuYXVkIEZlcnJhcmlzIDxhcm5hdWQu
ZmVycmFyaXNAY29sbGFib3JhLmNvbT4KPiA+IFNpZ25lZC1vZmYtYnk6IFNqb2VyZCBTaW1vbnMg
PHNqb2VyZC5zaW1vbnNAY29sbGFib3JhLmNvbT4KPiA+IFNpZ25lZC1vZmYtYnk6IE1hcnR5biBX
ZWxjaCA8bWFydHluLndlbGNoQGNvbGxhYm9yYS5jb20+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBBZHJp
YW4gUmF0aXUgPGFkcmlhbi5yYXRpdUBjb2xsYWJvcmEuY29tPgo+ID4gLS0tCj4gPiBDaGFuZ2Vz
IHNpbmNlIHY1Ogo+ID4gICAtIFJld29yZCB0byByZW1vdmUgdW5yZWxhdGVkIGRldmljZSB0cmVl
IHBhdGNoIG1lbnRpb24gKEZhYmlvKQo+ID4gICAtIE1vdmUgcGxscmVmX2NsayBlbmFibGUvZGlz
YWJsZSB0byBiaW5kL3VuYmluZCAoRXplcXVpZWwpCj4gPiAgIC0gRml4IGZyZWVzY2FsZS5jb20g
LT4gbnhwLmNvbSBlbWFpbCBhZGRyZXNzZXMgKEZhYmlvKQo+ID4gICAtIEFsc28gYWRkZWQgbXlz
ZWxmIGFzIG1vZHVsZSBhdXRob3IgKEZhYmlvKQo+ID4gICAtIFVzZSBEUk1fREVWXyogbWFjcm9z
IGZvciBjb25zaXN0ZW5jeSwgcHJpbnQgbW9yZSBlcnJvciBtc2cKPiA+Cj4gPiBDaGFuZ2VzIHNp
bmNlIHY0Ogo+ID4gICAtIFNwbGl0IG9mZiBkcml2ZXItc3BlY2lmaWMgY29uZmlndXJhdGlvbiBv
ZiBwaHkgdGltaW5ncyBkdWUKPiA+ICAgdG8gbmV3IHVwc3RyZWFtIEFQSS4KPiA+ICAgLSBNb3Zl
IHJlZ21hcCBpbmZyYXN0cnVjdHVyZSBsb2dpYyB0byBzZXBhcmF0ZSBjb21taXQgKEV6ZXF1aWVs
KQo+ID4gICAtIE1vdmUgZHNpIHYxLjAxIGxheW91dCBhZGRpdGlvbiB0byBhIHNlcGFyYXRlIGNv
bW1pdCAoRXplcXVpZWwpCj4gPiAgIC0gTWlub3Igd2FybmluZ3MgYW5kIGRyaXZlciBuYW1lIGZp
eGVzCj4gPgo+ID4gQ2hhbmdlcyBzaW5jZSB2MzoKPiA+ICAgLSBSZW5hbWVkIHBsYXRmb3JtIGRy
aXZlciB0byByZWZsZWN0IGl0J3MgaS5NWDYgb25seS4gKEZhYmlvKQo+ID4KPiA+IENoYW5nZXMg
c2luY2UgdjI6Cj4gPiAgIC0gRml4ZWQgY29tbWl0IHRhZ3MuIChFbWlsKQo+ID4KPiA+IENoYW5n
ZXMgc2luY2UgdjE6Cj4gPiAgIC0gTW92ZWQgcmVnaXN0ZXIgZGVmaW5pdGlvbnMgJiByZWdtYXAg
aW5pdGlhbGl6YXRpb24gaW50byBicmlkZ2UKPiA+ICAgbW9kdWxlLiBQbGF0Zm9ybSBkcml2ZXJz
IGdldCB0aGUgcmVnbWFwIHZpYSBwbGF0X2RhdGEgYWZ0ZXIKPiA+ICAgY2FsbGluZyB0aGUgYnJp
ZGdlIHByb2JlLiAoRW1pbCkKPiA+IC0tLQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pbXgvS2NvbmZp
ZyAgICAgICAgICAgIHwgICA3ICsKPiA+ICBkcml2ZXJzL2dwdS9kcm0vaW14L01ha2VmaWxlICAg
ICAgICAgICB8ICAgMSArCj4gPiAgZHJpdmVycy9ncHUvZHJtL2lteC9kd19taXBpX2RzaS1pbXg2
LmMgfCA0MDkgKysrKysrKysrKysrKysrKysrKysrKysrKwo+ID4gIDMgZmlsZXMgY2hhbmdlZCwg
NDE3IGluc2VydGlvbnMoKykKPiA+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJt
L2lteC9kd19taXBpX2RzaS1pbXg2LmMKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2lteC9LY29uZmlnIGIvZHJpdmVycy9ncHUvZHJtL2lteC9LY29uZmlnCj4gPiBpbmRleCAy
MDdiZjc0MDlkZmIuLmI0OWU3MGU3ZjBmZCAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pbXgvS2NvbmZpZwo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2lteC9LY29uZmlnCj4gPiBA
QCAtMzksMyArMzksMTAgQEAgY29uZmlnIERSTV9JTVhfSERNSQo+ID4gICAgICAgICBkZXBlbmRz
IG9uIERSTV9JTVgKPiA+ICAgICAgICAgaGVscAo+ID4gICAgICAgICAgIENob29zZSB0aGlzIGlm
IHlvdSB3YW50IHRvIHVzZSBIRE1JIG9uIGkuTVg2Lgo+ID4gKwo+ID4gK2NvbmZpZyBEUk1fSU1Y
Nl9NSVBJX0RTSQo+ID4gKyAgICAgICB0cmlzdGF0ZSAiRnJlZXNjYWxlIGkuTVg2IERSTSBNSVBJ
IERTSSIKPiA+ICsgICAgICAgc2VsZWN0IERSTV9EV19NSVBJX0RTSQo+ID4gKyAgICAgICBkZXBl
bmRzIG9uIERSTV9JTVgKPiAKPiBTaG91bGQgaXQgZGVwZW5kIG9uIENPTkZJR19PRiB0b28/IEkg
c3VzcGVjdCB5b3UnbGwgZ2V0IGJ1aWxkIGVycm9ycwo+IGlmIE9GIGlzIG5vdCBzZWxlY3RlZAo+
IAo+ID4gKyAgICAgICBoZWxwCj4gPiArICAgICAgICAgQ2hvb3NlIHRoaXMgaWYgeW91IHdhbnQg
dG8gdXNlIE1JUEkgRFNJIG9uIGkuTVg2Lgo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pbXgvTWFrZWZpbGUgYi9kcml2ZXJzL2dwdS9kcm0vaW14L01ha2VmaWxlCj4gPiBpbmRleCAy
MWNkY2MyZmFhYmMuLjlhNzg0M2M1OTM0NyAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pbXgvTWFrZWZpbGUKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pbXgvTWFrZWZpbGUKPiA+
IEBAIC05LDMgKzksNCBAQCBvYmotJChDT05GSUdfRFJNX0lNWF9UVkUpICs9IGlteC10dmUubwo+
ID4gIG9iai0kKENPTkZJR19EUk1fSU1YX0xEQikgKz0gaW14LWxkYi5vCj4gPgo+ID4gIG9iai0k
KENPTkZJR19EUk1fSU1YX0hETUkpICs9IGR3X2hkbWktaW14Lm8KPiA+ICtvYmotJChDT05GSUdf
RFJNX0lNWDZfTUlQSV9EU0kpICs9IGR3X21pcGlfZHNpLWlteDYubwo+ID4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pbXgvZHdfbWlwaV9kc2ktaW14Ni5jIGIvZHJpdmVycy9ncHUvZHJt
L2lteC9kd19taXBpX2RzaS1pbXg2LmMKPiA+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gPiBpbmRl
eCAwMDAwMDAwMDAwMDAuLjY5MTRkYjhjZThjYgo+ID4gLS0tIC9kZXYvbnVsbAo+ID4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2lteC9kd19taXBpX2RzaS1pbXg2LmMKPiA+IEBAIC0wLDAgKzEsNDA5
IEBACj4gPiArLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjArCj4gPiArLyoKPiA+
ICsgKiBpLk1YNiBkcm0gZHJpdmVyIC0gTUlQSSBEU0kgSG9zdCBDb250cm9sbGVyCj4gPiArICoK
PiA+ICsgKiBDb3B5cmlnaHQgKEMpIDIwMTEtMjAxNSBGcmVlc2NhbGUgU2VtaWNvbmR1Y3Rvciwg
SW5jLgo+ID4gKyAqIENvcHlyaWdodCAoQykgMjAxOS0yMDIwIENvbGxhYm9yYSwgTHRkLgo+ID4g
KyAqLwo+ID4gKwo+ID4gKyNpbmNsdWRlIDxsaW51eC9jbGsuaD4KPiA+ICsjaW5jbHVkZSA8bGlu
dXgvY29tcG9uZW50Lmg+Cj4gPiArI2luY2x1ZGUgPGxpbnV4L21mZC9zeXNjb24uaD4KPiA+ICsj
aW5jbHVkZSA8bGludXgvbWZkL3N5c2Nvbi9pbXg2cS1pb211eGMtZ3ByLmg+Cj4gPiArI2luY2x1
ZGUgPGxpbnV4L21vZHVsZS5oPgo+ID4gKyNpbmNsdWRlIDxsaW51eC9vZl9kZXZpY2UuaD4KPiA+
ICsjaW5jbHVkZSA8bGludXgvcmVnbWFwLmg+Cj4gPiArI2luY2x1ZGUgPGxpbnV4L3ZpZGVvZGV2
Mi5oPgo+ID4gKyNpbmNsdWRlIDxkcm0vYnJpZGdlL2R3X21pcGlfZHNpLmg+Cj4gPiArI2luY2x1
ZGUgPGRybS9kcm1fY3J0Y19oZWxwZXIuaD4KPiA+ICsjaW5jbHVkZSA8ZHJtL2RybV9taXBpX2Rz
aS5oPgo+ID4gKyNpbmNsdWRlIDxkcm0vZHJtX29mLmg+Cj4gPiArI2luY2x1ZGUgPGRybS9kcm1f
cHJpbnQuaD4KPiA+ICsKPiA+ICsjaW5jbHVkZSAiaW14LWRybS5oIgo+ID4gKwo+ID4gKyNkZWZp
bmUgRFNJX1BXUl9VUCAgICAgICAgICAgICAgICAgICAgIDB4MDQKPiA+ICsjZGVmaW5lIFJFU0VU
ICAgICAgICAgICAgICAgICAgICAgICAgICAwCj4gPiArI2RlZmluZSBQT1dFUlVQICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBCSVQoMCkKPiA+ICsKPiA+ICsjZGVmaW5lIERTSV9QSFlf
SUZfQ1RSTCAgICAgICAgICAgICAgICAgICAgICAgIDB4NWMKPiA+ICsjZGVmaW5lIFBIWV9JRl9D
VFJMX1JFU0VUICAgICAgICAgICAgICAweDAKPiA+ICsKPiA+ICsjZGVmaW5lIERTSV9QSFlfVFNU
X0NUUkwwICAgICAgICAgICAgICAweDY0Cj4gPiArI2RlZmluZSBQSFlfVEVTVENMSyAgICAgICAg
ICAgICAgICAgICAgQklUKDEpCj4gPiArI2RlZmluZSBQSFlfVU5URVNUQ0xLICAgICAgICAgICAg
ICAgICAgMAo+ID4gKyNkZWZpbmUgUEhZX1RFU1RDTFIgICAgICAgICAgICAgICAgICAgIEJJVCgw
KQo+ID4gKyNkZWZpbmUgUEhZX1VOVEVTVENMUiAgICAgICAgICAgICAgICAgIDAKPiA+ICsKPiA+
ICsjZGVmaW5lIERTSV9QSFlfVFNUX0NUUkwxICAgICAgICAgICAgICAweDY4Cj4gPiArI2RlZmlu
ZSBQSFlfVEVTVEVOICAgICAgICAgICAgICAgICAgICAgQklUKDE2KQo+ID4gKyNkZWZpbmUgUEhZ
X1VOVEVTVEVOICAgICAgICAgICAgICAgICAgIDAKPiA+ICsjZGVmaW5lIFBIWV9URVNURE9VVChu
KSAgICAgICAgICAgICAgICAgICAgICAgICgoKG4pICYgMHhmZikgPDwgOCkKPiA+ICsjZGVmaW5l
IFBIWV9URVNURElOKG4pICAgICAgICAgICAgICAgICAoKChuKSAmIDB4ZmYpIDw8IDApCj4gPiAr
Cj4gPiArc3RydWN0IGlteF9taXBpX2RzaSB7Cj4gPiArICAgICAgIHN0cnVjdCBkcm1fZW5jb2Rl
ciBlbmNvZGVyOwo+ID4gKyAgICAgICBzdHJ1Y3QgZGV2aWNlICpkZXY7Cj4gPiArICAgICAgIHN0
cnVjdCByZWdtYXAgKm11eF9zZWw7Cj4gPiArICAgICAgIHN0cnVjdCBkd19taXBpX2RzaSAqbWlw
aV9kc2k7Cj4gPiArICAgICAgIHN0cnVjdCBjbGsgKnBsbHJlZl9jbGs7Cj4gPiArCj4gPiArICAg
ICAgIHZvaWQgX19pb21lbSAqYmFzZTsKPiA+ICsgICAgICAgdW5zaWduZWQgaW50IGxhbmVfbWJw
czsKPiA+ICt9Owo+ID4gKwo+ID4gK3N0cnVjdCBkcGh5X3BsbF90ZXN0ZGluX21hcCB7Cj4gPiAr
ICAgICAgIHVuc2lnbmVkIGludCBtYXhfbWJwczsKPiA+ICsgICAgICAgdTggdGVzdGRpbjsKPiA+
ICt9Owo+ID4gKwo+ID4gKy8qIFRoZSB0YWJsZSBpcyBiYXNlZCBvbiAyN01IeiBEUEhZIHBsbCBy
ZWZlcmVuY2UgY2xvY2suICovCj4gPiArc3RhdGljIGNvbnN0IHN0cnVjdCBkcGh5X3BsbF90ZXN0
ZGluX21hcCBkcHRkaW5fbWFwW10gPSB7Cj4gPiArICAgICAgIHsxNjAsIDB4MDR9LCB7MTgwLCAw
eDI0fSwgezIwMCwgMHg0NH0sIHsyMTAsIDB4MDZ9LAo+ID4gKyAgICAgICB7MjQwLCAweDI2fSwg
ezI1MCwgMHg0Nn0sIHsyNzAsIDB4MDh9LCB7MzAwLCAweDI4fSwKPiA+ICsgICAgICAgezMzMCwg
MHg0OH0sIHszNjAsIDB4MmF9LCB7NDAwLCAweDRhfSwgezQ1MCwgMHgwY30sCj4gPiArICAgICAg
IHs1MDAsIDB4MmN9LCB7NTUwLCAweDBlfSwgezYwMCwgMHgyZX0sIHs2NTAsIDB4MTB9LAo+ID4g
KyAgICAgICB7NzAwLCAweDMwfSwgezc1MCwgMHgxMn0sIHs4MDAsIDB4MzJ9LCB7ODUwLCAweDE0
fSwKPiA+ICsgICAgICAgezkwMCwgMHgzNH0sIHs5NTAsIDB4NTR9LCB7MTAwMCwgMHg3NH0KPiA+
ICt9Owo+ID4gKwo+ID4gK3N0YXRpYyBpbmxpbmUgc3RydWN0IGlteF9taXBpX2RzaSAqZW5jX3Rv
X2RzaShzdHJ1Y3QgZHJtX2VuY29kZXIgKmVuYykKPiA+ICt7Cj4gPiArICAgICAgIHJldHVybiBj
b250YWluZXJfb2YoZW5jLCBzdHJ1Y3QgaW14X21pcGlfZHNpLCBlbmNvZGVyKTsKPiA+ICt9Cj4g
PiArCj4gPiArc3RhdGljIHZvaWQgaW14X21pcGlfZHNpX3NldF9pcHVfZGlfbXV4KHN0cnVjdCBp
bXhfbWlwaV9kc2kgKmRzaSwgaW50IGlwdV9kaSkKPiA+ICt7Cj4gPiArICAgICAgIHJlZ21hcF91
cGRhdGVfYml0cyhkc2ktPm11eF9zZWwsIElPTVVYQ19HUFIzLAo+ID4gKyAgICAgICAgICAgICAg
ICAgICAgICAgICAgSU1YNlFfR1BSM19NSVBJX01VWF9DVExfTUFTSywKPiA+ICsgICAgICAgICAg
ICAgICAgICAgICAgICAgIGlwdV9kaSA8PCBJTVg2UV9HUFIzX01JUElfTVVYX0NUTF9TSElGVCk7
Cj4gPiArfQo+ID4gKwo+ID4gK3N0YXRpYyBjb25zdCBzdHJ1Y3QgZHJtX2VuY29kZXJfZnVuY3Mg
aW14X21pcGlfZHNpX2VuY29kZXJfZnVuY3MgPSB7Cj4gPiArICAgICAgIC5kZXN0cm95ID0gaW14
X2RybV9lbmNvZGVyX2Rlc3Ryb3ksCj4gPiArfTsKPiA+ICsKPiA+ICtzdGF0aWMgYm9vbCBpbXhf
bWlwaV9kc2lfZW5jb2Rlcl9tb2RlX2ZpeHVwKHN0cnVjdCBkcm1fZW5jb2RlciAqZW5jb2RlciwK
PiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgY29uc3Qgc3Ry
dWN0IGRybV9kaXNwbGF5X21vZGUgKm1vZGUsCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIHN0cnVjdCBkcm1fZGlzcGxheV9tb2RlICphZGpfbW9kZSkKPiA+
ICt7Cj4gPiArICAgICAgIHJldHVybiB0cnVlOwo+ID4gK30KPiA+ICsKPiA+ICtzdGF0aWMgaW50
IGlteF9taXBpX2RzaV9lbmNvZGVyX2F0b21pY19jaGVjayhzdHJ1Y3QgZHJtX2VuY29kZXIgKmVu
Y29kZXIsCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBz
dHJ1Y3QgZHJtX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsCj4gPiArICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICBzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcl9zdGF0ZSAqY29u
bikKPiA+ICt7Cj4gPiArICAgICAgIHN0cnVjdCBpbXhfY3J0Y19zdGF0ZSAqaW14X2NydGNfc3Rh
dGUgPSB0b19pbXhfY3J0Y19zdGF0ZShjcnRjX3N0YXRlKTsKPiA+ICsKPiA+ICsgICAgICAgLyog
VGhlIGZvbGxvd2luZyB2YWx1ZXMgYXJlIHRha2VuIGZyb20gZHdfaGRtaV9pbXhfYXRvbWljX2No
ZWNrICovCj4gPiArICAgICAgIGlteF9jcnRjX3N0YXRlLT5idXNfZm9ybWF0ID0gTUVESUFfQlVT
X0ZNVF9SR0I4ODhfMVgyNDsKPiA+ICsgICAgICAgaW14X2NydGNfc3RhdGUtPmRpX2hzeW5jX3Bp
biA9IDI7Cj4gPiArICAgICAgIGlteF9jcnRjX3N0YXRlLT5kaV92c3luY19waW4gPSAzOwo+ID4g
Kwo+ID4gKyAgICAgICByZXR1cm4gMDsKPiA+ICt9Cj4gPiArCj4gPiArc3RhdGljIHZvaWQgaW14
X21pcGlfZHNpX2VuY29kZXJfY29tbWl0KHN0cnVjdCBkcm1fZW5jb2RlciAqZW5jb2RlcikKPiA+
ICt7Cj4gPiArICAgICAgIHN0cnVjdCBpbXhfbWlwaV9kc2kgKmRzaSA9IGVuY190b19kc2koZW5j
b2Rlcik7Cj4gPiArICAgICAgIGludCBtdXggPSBkcm1fb2ZfZW5jb2Rlcl9hY3RpdmVfcG9ydF9p
ZChkc2ktPmRldi0+b2Zfbm9kZSwgZW5jb2Rlcik7Cj4gPiArCj4gPiArICAgICAgIGlteF9taXBp
X2RzaV9zZXRfaXB1X2RpX211eChkc2ksIG11eCk7Cj4gPiArfQo+ID4gKwo+ID4gK3N0YXRpYyB2
b2lkIGlteF9taXBpX2RzaV9lbmNvZGVyX2Rpc2FibGUoc3RydWN0IGRybV9lbmNvZGVyICplbmNv
ZGVyKQo+ID4gK3sKPiA+ICt9Cj4gPiArCj4gPiArc3RhdGljIGNvbnN0IHN0cnVjdCBkcm1fZW5j
b2Rlcl9oZWxwZXJfZnVuY3MgaW14X21pcGlfZHNpX2VuY29kZXJfaGVscGVycyA9IHsKPiAKPiBB
RkFJSyAob3IgYXQgbGVhc3QgdGhpcyBpcyB0aGUgZmVlZGJhY2sgSSByZWNlaXZlZCkgZHJtX2Vu
Y29kZXIgaXMKPiBraW5kIG9mIGRlcHJlY2F0ZWQsIGFuZCBub3dhZGF5cyBhbGwgaXMgbWlncmF0
ZWQgdG8gZHJtX2JyaWRnZQo+IChlbmNvZGVycywgYnJpZGdlcyBhbmQgcGFuZWxzKS4gT2YgY291
cnNlLCBhIGRybV9lbmNvZGVyIGlzIG5lZWRlZCwgYXMKPiB0aGUgRFJNIGNvcmUgZXhwZWN0cyBv
bmUsIGJ1dCBzaG91bGQganVzdCBiZSBhIGR1bW15IG9iamVjdCB0aGF0IHlvdQo+IGNhbiBwcm9i
YWJseSBjcmVhdGUgd2l0aCBqdXN0IGNhbGxpbmcgIGRybV9zaW1wbGVfZW5jb2Rlcl9pbml0KCku
IERSTQo+IG1haW50YWluZXJzLCBwbGVhc2Ugc2hvdXQgaWYgSSBhbSB3cm9uZy4KClRoYXQgY2Vy
dGFpbmx5IG1hdGNoZXMgbXkgcG9zaXRpb24gOi0pIEkgd291bGQgYWxzbyBhZGQgdGhhdCB0aGUg
RFJNCmVuY29kZXIgc2hvdWxkIGJlIGNyZWF0ZWQgaW4gaW14LWRybS1jb3JlLmMgb3IgaW4gaXB1
djMtY3J0Yy5jLCBub3QKaGVyZS4KCj4gPiArICAgICAgIC5tb2RlX2ZpeHVwID0gaW14X21pcGlf
ZHNpX2VuY29kZXJfbW9kZV9maXh1cCwKPiA+ICsgICAgICAgLmNvbW1pdCA9IGlteF9taXBpX2Rz
aV9lbmNvZGVyX2NvbW1pdCwKPiA+ICsgICAgICAgLmRpc2FibGUgPSBpbXhfbWlwaV9kc2lfZW5j
b2Rlcl9kaXNhYmxlLAo+ID4gKyAgICAgICAuYXRvbWljX2NoZWNrID0gaW14X21pcGlfZHNpX2Vu
Y29kZXJfYXRvbWljX2NoZWNrLAo+ID4gK307Cj4gPiArCj4gPiArc3RhdGljIGludCBpbXhfbWlw
aV9kc2lfcmVnaXN0ZXIoc3RydWN0IGRybV9kZXZpY2UgKmRybSwKPiA+ICsgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIHN0cnVjdCBpbXhfbWlwaV9kc2kgKmRzaSkKPiA+ICt7Cj4gPiAr
ICAgICAgIGludCByZXQ7Cj4gPiArCj4gPiArICAgICAgIHJldCA9IGlteF9kcm1fZW5jb2Rlcl9w
YXJzZV9vZihkcm0sICZkc2ktPmVuY29kZXIsIGRzaS0+ZGV2LT5vZl9ub2RlKTsKPiA+ICsgICAg
ICAgaWYgKHJldCkKPiA+ICsgICAgICAgICAgICAgICByZXR1cm4gcmV0Owo+ID4gKwo+ID4gKyAg
ICAgICBkcm1fZW5jb2Rlcl9oZWxwZXJfYWRkKCZkc2ktPmVuY29kZXIsCj4gPiArICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgJmlteF9taXBpX2RzaV9lbmNvZGVyX2hlbHBlcnMpOwo+ID4g
KyAgICAgICBkcm1fZW5jb2Rlcl9pbml0KGRybSwgJmRzaS0+ZW5jb2RlciwgJmlteF9taXBpX2Rz
aV9lbmNvZGVyX2Z1bmNzLAo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgIERSTV9NT0RFX0VO
Q09ERVJfRFNJLCBOVUxMKTsKPiA+ICsgICAgICAgcmV0dXJuIDA7Cj4gPiArfQo+ID4gKwo+ID4g
K3N0YXRpYyBlbnVtIGRybV9tb2RlX3N0YXR1cyBpbXhfbWlwaV9kc2lfbW9kZV92YWxpZCh2b2lk
ICpwcml2X2RhdGEsCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
Y29uc3Qgc3RydWN0IGRybV9kaXNwbGF5X21vZGUgKm1vZGUpCj4gPiArewo+ID4gKyAgICAgICAv
Kgo+ID4gKyAgICAgICAgKiBUaGUgVklEX1BLVF9TSVpFIGZpZWxkIGluIHRoZSBEU0lfVklEX1BL
VF9DRkcKPiA+ICsgICAgICAgICogcmVnaXN0ZXIgaXMgMTEtYml0Lgo+ID4gKyAgICAgICAgKi8K
PiA+ICsgICAgICAgaWYgKG1vZGUtPmhkaXNwbGF5ID4gMHg3ZmYpCj4gPiArICAgICAgICAgICAg
ICAgcmV0dXJuIE1PREVfQkFEX0hWQUxVRTsKPiA+ICsKPiA+ICsgICAgICAgLyoKPiA+ICsgICAg
ICAgICogVGhlIFZfQUNUSVZFX0xJTkVTIGZpZWxkIGluIHRoZSBEU0lfVlRJTUlOR19DRkcKPiA+
ICsgICAgICAgICogcmVnaXN0ZXIgaXMgMTEtYml0Lgo+ID4gKyAgICAgICAgKi8KPiA+ICsgICAg
ICAgaWYgKG1vZGUtPnZkaXNwbGF5ID4gMHg3ZmYpCj4gPiArICAgICAgICAgICAgICAgcmV0dXJu
IE1PREVfQkFEX1ZWQUxVRTsKPiA+ICsKPiA+ICsgICAgICAgcmV0dXJuIE1PREVfT0s7Cj4gPiAr
fQo+ID4gKwo+ID4gKwo+ID4gK3N0YXRpYyB1bnNpZ25lZCBpbnQgbWF4X21icHNfdG9fdGVzdGRp
bih1bnNpZ25lZCBpbnQgbWF4X21icHMpCj4gPiArewo+ID4gKyAgICAgICB1bnNpZ25lZCBpbnQg
aTsKPiA+ICsKPiA+ICsgICAgICAgZm9yIChpID0gMDsgaSA8IEFSUkFZX1NJWkUoZHB0ZGluX21h
cCk7IGkrKykKPiA+ICsgICAgICAgICAgICAgICBpZiAoZHB0ZGluX21hcFtpXS5tYXhfbWJwcyA9
PSBtYXhfbWJwcykKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgIHJldHVybiBkcHRkaW5fbWFw
W2ldLnRlc3RkaW47Cj4gPiArCj4gPiArICAgICAgIHJldHVybiAtRUlOVkFMOwo+ID4gK30KPiA+
ICsKPiA+ICtzdGF0aWMgaW5saW5lIHZvaWQgZHNpX3dyaXRlKHN0cnVjdCBpbXhfbWlwaV9kc2kg
KmRzaSwgdTMyIHJlZywgdTMyIHZhbCkKPiA+ICt7Cj4gPiArICAgICAgIHdyaXRlbCh2YWwsIGRz
aS0+YmFzZSArIHJlZyk7Cj4gPiArfQo+ID4gKwo+ID4gK3N0YXRpYyBpbnQgaW14X21pcGlfZHNp
X3BoeV9pbml0KHZvaWQgKnByaXZfZGF0YSkKPiA+ICt7Cj4gPiArICAgICAgIHN0cnVjdCBpbXhf
bWlwaV9kc2kgKmRzaSA9IHByaXZfZGF0YTsKPiA+ICsgICAgICAgaW50IHRlc3RkaW47Cj4gPiAr
Cj4gPiArICAgICAgIHRlc3RkaW4gPSBtYXhfbWJwc190b190ZXN0ZGluKGRzaS0+bGFuZV9tYnBz
KTsKPiA+ICsgICAgICAgaWYgKHRlc3RkaW4gPCAwKSB7Cj4gPiArICAgICAgICAgICAgICAgRFJN
X0RFVl9FUlJPUihkc2ktPmRldiwKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICJm
YWlsZWQgdG8gZ2V0IHRlc3RkaW4gZm9yICVkbWJwcyBsYW5lIGNsb2NrXG4iLAo+ID4gKyAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgZHNpLT5sYW5lX21icHMpOwo+ID4gKyAgICAgICAgICAg
ICAgIHJldHVybiB0ZXN0ZGluOwo+ID4gKyAgICAgICB9Cj4gPiArCj4gPiArICAgICAgIGRzaV93
cml0ZShkc2ksIERTSV9QSFlfSUZfQ1RSTCwgUEhZX0lGX0NUUkxfUkVTRVQpOwo+ID4gKyAgICAg
ICBkc2lfd3JpdGUoZHNpLCBEU0lfUFdSX1VQLCBQT1dFUlVQKTsKPiA+ICsKPiA+ICsgICAgICAg
ZHNpX3dyaXRlKGRzaSwgRFNJX1BIWV9UU1RfQ1RSTDAsIFBIWV9VTlRFU1RDTEsgfCBQSFlfVU5U
RVNUQ0xSKTsKPiA+ICsgICAgICAgZHNpX3dyaXRlKGRzaSwgRFNJX1BIWV9UU1RfQ1RSTDEsIFBI
WV9URVNURU4gfCBQSFlfVEVTVERPVVQoMCkgfAo+ID4gKyAgICAgICAgICAgICAgICAgUEhZX1RF
U1RESU4oMHg0NCkpOwo+ID4gKyAgICAgICBkc2lfd3JpdGUoZHNpLCBEU0lfUEhZX1RTVF9DVFJM
MCwgUEhZX1RFU1RDTEsgfCBQSFlfVU5URVNUQ0xSKTsKPiA+ICsgICAgICAgZHNpX3dyaXRlKGRz
aSwgRFNJX1BIWV9UU1RfQ1RSTDAsIFBIWV9VTlRFU1RDTEsgfCBQSFlfVU5URVNUQ0xSKTsKPiA+
ICsgICAgICAgZHNpX3dyaXRlKGRzaSwgRFNJX1BIWV9UU1RfQ1RSTDEsIFBIWV9VTlRFU1RFTiB8
IFBIWV9URVNURE9VVCgwKSB8Cj4gPiArICAgICAgICAgICAgICAgICBQSFlfVEVTVERJTih0ZXN0
ZGluKSk7Cj4gPiArICAgICAgIGRzaV93cml0ZShkc2ksIERTSV9QSFlfVFNUX0NUUkwwLCBQSFlf
VEVTVENMSyB8IFBIWV9VTlRFU1RDTFIpOwo+ID4gKyAgICAgICBkc2lfd3JpdGUoZHNpLCBEU0lf
UEhZX1RTVF9DVFJMMCwgUEhZX1VOVEVTVENMSyB8IFBIWV9VTlRFU1RDTFIpOwo+ID4gKwo+ID4g
KyAgICAgICByZXR1cm4gMDsKPiA+ICt9Cj4gPiArCj4gPiArc3RhdGljIGludCBpbXhfbWlwaV9k
c2lfZ2V0X2xhbmVfbWJwcyh2b2lkICpwcml2X2RhdGEsCj4gPiArICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIGNvbnN0IHN0cnVjdCBkcm1fZGlzcGxheV9tb2RlICptb2RlLAo+
ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB1bnNpZ25lZCBsb25nIG1v
ZGVfZmxhZ3MsIHUzMiBsYW5lcywKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgdTMyIGZvcm1hdCwgdW5zaWduZWQgaW50ICpsYW5lX21icHMpCj4gPiArewo+ID4gKyAg
ICAgICBzdHJ1Y3QgaW14X21pcGlfZHNpICpkc2kgPSBwcml2X2RhdGE7Cj4gPiArICAgICAgIGlu
dCBicHA7Cj4gPiArICAgICAgIHVuc2lnbmVkIGludCBpLCB0YXJnZXRfbWJwcywgbXBjbGs7Cj4g
PiArICAgICAgIHVuc2lnbmVkIGxvbmcgcGxscmVmOwo+ID4gKwo+ID4gKyAgICAgICBicHAgPSBt
aXBpX2RzaV9waXhlbF9mb3JtYXRfdG9fYnBwKGZvcm1hdCk7Cj4gPiArICAgICAgIGlmIChicHAg
PCAwKSB7Cj4gPiArICAgICAgICAgICAgICAgRFJNX0RFVl9FUlJPUihkc2ktPmRldiwgImZhaWxl
ZCB0byBnZXQgYnBwIGZvciBmb3JtYXQgJWQ6ICVkXG4iLAo+ID4gKyAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgZm9ybWF0LCBicHApOwo+ID4gKyAgICAgICAgICAgICAgIHJldHVybiBicHA7
Cj4gPiArICAgICAgIH0KPiA+ICsKPiA+ICsgICAgICAgcGxscmVmID0gY2xrX2dldF9yYXRlKGRz
aS0+cGxscmVmX2Nsayk7Cj4gPiArICAgICAgIGlmIChwbGxyZWYgIT0gMjcwMDAwMDApCj4gPiAr
ICAgICAgICAgICAgICAgRFJNX1dBUk4oIkRTSSBwbGxyZWZfY2xrIG5vdCBzZXQgdG8gMjdNaHpc
biIpOwo+ID4gKwo+ID4gKyAgICAgICBtcGNsayA9IERJVl9ST1VORF9VUChtb2RlLT5jbG9jaywg
TVNFQ19QRVJfU0VDKTsKPiA+ICsgICAgICAgaWYgKG1wY2xrKSB7Cj4gPiArICAgICAgICAgICAg
ICAgLyogdGFrZSAxLzAuNyBibGFua2luZyBvdmVyaGVhZCBpbnRvIGNvbnNpZGVyYXRpb24gKi8K
PiA+ICsgICAgICAgICAgICAgICB0YXJnZXRfbWJwcyA9IChtcGNsayAqIChicHAgLyBsYW5lcykg
KiAxMCkgLyA3Owo+ID4gKyAgICAgICB9IGVsc2Ugewo+ID4gKyAgICAgICAgICAgICAgIERSTV9E
RVZfRVJST1IoZHNpLT5kZXYsICJ1c2UgZGVmYXVsdCAxR2JwcyBEUEhZIHBsbCBjbG9ja1xuIik7
Cj4gPiArICAgICAgICAgICAgICAgdGFyZ2V0X21icHMgPSAxMDAwOwo+ID4gKyAgICAgICB9Cj4g
PiArCj4gPiArICAgICAgIERSTV9ERVZfREVCVUcoZHNpLT5kZXYsICJ0YXJnZXQgcGxscmVmX2Ns
ayBmcmVxdWVuY3kgaXMgJXVNYnBzXG4iLAo+ID4gKyAgICAgICAgICAgICAgICAgICAgIHRhcmdl
dF9tYnBzKTsKPiA+ICsKPiA+ICsgICAgICAgZm9yIChpID0gMDsgaSA8IEFSUkFZX1NJWkUoZHB0
ZGluX21hcCk7IGkrKykgewo+ID4gKyAgICAgICAgICAgICAgIGlmICh0YXJnZXRfbWJwcyA8IGRw
dGRpbl9tYXBbaV0ubWF4X21icHMpIHsKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICpsYW5l
X21icHMgPSBkcHRkaW5fbWFwW2ldLm1heF9tYnBzOwo+ID4gKyAgICAgICAgICAgICAgICAgICAg
ICAgZHNpLT5sYW5lX21icHMgPSAqbGFuZV9tYnBzOwo+ID4gKyAgICAgICAgICAgICAgICAgICAg
ICAgRFJNX0RFVl9ERUJVRyhkc2ktPmRldiwKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgInJlYWwgcGxscmVmX2NsayBmcmVxdWVuY3kgaXMgJXVNYnBzXG4iLAo+ID4g
KyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAqbGFuZV9tYnBzKTsKPiA+ICsg
ICAgICAgICAgICAgICAgICAgICAgIHJldHVybiAwOwo+ID4gKyAgICAgICAgICAgICAgIH0KPiA+
ICsgICAgICAgfQo+ID4gKwo+ID4gKyAgICAgICBEUk1fREVWX0VSUk9SKGRzaS0+ZGV2LCAiRFBI
WSBjbG9jayBmcmVxdWVuY3kgJXVNYnBzIGlzIG91dCBvZiByYW5nZVxuIiwKPiA+ICsgICAgICAg
ICAgICAgICAgICAgICB0YXJnZXRfbWJwcyk7Cj4gPiArCj4gPiArICAgICAgIHJldHVybiAtRUlO
VkFMOwo+ID4gK30KPiA+ICsKPiA+ICtzdGF0aWMgaW50Cj4gPiArZHdfbWlwaV9kc2lfcGh5X2dl
dF90aW1pbmcodm9pZCAqcHJpdl9kYXRhLCB1bnNpZ25lZCBpbnQgbGFuZV9tYnBzLAo+ID4gKyAg
ICAgICAgICAgICAgICAgICAgICAgICAgc3RydWN0IGR3X21pcGlfZHNpX2RwaHlfdGltaW5nICp0
aW1pbmcpCj4gPiArewo+ID4gKyAgICAgICB0aW1pbmctPmNsa19oczJscCA9IDB4NDA7Cj4gPiAr
ICAgICAgIHRpbWluZy0+Y2xrX2xwMmhzID0gMHg0MDsKPiA+ICsgICAgICAgdGltaW5nLT5kYXRh
X2hzMmxwID0gMHg0MDsKPiA+ICsgICAgICAgdGltaW5nLT5kYXRhX2xwMmhzID0gMHg0MDsKPiA+
ICsKPiA+ICsgICAgICAgcmV0dXJuIDA7Cj4gPiArfQo+ID4gKwo+ID4gK3N0YXRpYyBjb25zdCBz
dHJ1Y3QgZHdfbWlwaV9kc2lfcGh5X29wcyBkd19taXBpX2RzaV9pbXg2X3BoeV9vcHMgPSB7Cj4g
PiArICAgICAgIC5pbml0ID0gaW14X21pcGlfZHNpX3BoeV9pbml0LAo+ID4gKyAgICAgICAuZ2V0
X2xhbmVfbWJwcyA9IGlteF9taXBpX2RzaV9nZXRfbGFuZV9tYnBzLAo+ID4gKyAgICAgICAuZ2V0
X3RpbWluZyA9IGR3X21pcGlfZHNpX3BoeV9nZXRfdGltaW5nLAo+ID4gK307Cj4gPiArCj4gPiAr
c3RhdGljIHN0cnVjdCBkd19taXBpX2RzaV9wbGF0X2RhdGEgaW14NnFfbWlwaV9kc2lfZHJ2X2Rh
dGEgPSB7Cj4gPiArICAgICAgIC5tYXhfZGF0YV9sYW5lcyA9IDIsCj4gPiArICAgICAgIC5tb2Rl
X3ZhbGlkID0gaW14X21pcGlfZHNpX21vZGVfdmFsaWQsCj4gPiArICAgICAgIC5waHlfb3BzID0g
JmR3X21pcGlfZHNpX2lteDZfcGh5X29wcywKPiA+ICt9Owo+ID4gKwo+ID4gK3N0YXRpYyBjb25z
dCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkIGlteF9kc2lfZHRfaWRzW10gPSB7Cj4gPiArICAgICAgIHsK
PiA+ICsgICAgICAgICAgICAgICAuY29tcGF0aWJsZSA9ICJmc2wsaW14NnEtbWlwaS1kc2kiLAo+
ID4gKyAgICAgICAgICAgICAgIC5kYXRhID0gJmlteDZxX21pcGlfZHNpX2Rydl9kYXRhLAo+ID4g
KyAgICAgICB9LAo+ID4gKyAgICAgICB7IC8qIHNlbnRpbmVsICovIH0KPiA+ICt9Owo+ID4gK01P
RFVMRV9ERVZJQ0VfVEFCTEUob2YsIGlteF9kc2lfZHRfaWRzKTsKPiA+ICsKPiA+ICtzdGF0aWMg
aW50IGlteF9taXBpX2RzaV9iaW5kKHN0cnVjdCBkZXZpY2UgKmRldiwgc3RydWN0IGRldmljZSAq
bWFzdGVyLAo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICB2b2lkICpkYXRhKQo+ID4g
K3sKPiA+ICsgICAgICAgc3RydWN0IGlteF9taXBpX2RzaSAqZHNpID0gZGV2X2dldF9kcnZkYXRh
KGRldik7Cj4gPiArICAgICAgIHN0cnVjdCBkcm1fZGV2aWNlICpkcm0gPSBkYXRhOwo+ID4gKyAg
ICAgICBpbnQgcmV0Owo+ID4gKwo+ID4gKyAgICAgICByZXQgPSBjbGtfcHJlcGFyZV9lbmFibGUo
ZHNpLT5wbGxyZWZfY2xrKTsKPiA+ICsgICAgICAgaWYgKHJldCkgewo+ID4gKyAgICAgICAgICAg
ICAgIERSTV9ERVZfRVJST1IoZGV2LCAiRmFpbGVkIHRvIGVuYWJsZSBwbGxyZWZfY2xrOiAlZFxu
IiwgcmV0KTsKPiA+ICsgICAgICAgICAgICAgICByZXR1cm4gcmV0Owo+ID4gKyAgICAgICB9Cj4g
PiArCj4gPiArICAgICAgIHJldCA9IGlteF9taXBpX2RzaV9yZWdpc3Rlcihkcm0sIGRzaSk7Cj4g
PiArICAgICAgIGlmIChyZXQpIHsKPiA+ICsgICAgICAgICAgICAgICBEUk1fREVWX0VSUk9SKGRl
diwgIkZhaWxlZCB0byByZWdpc3RlcjogJWRcbiIsIHJldCk7Cj4gPiArICAgICAgICAgICAgICAg
cmV0dXJuIHJldDsKPiA+ICsgICAgICAgfQo+ID4gKwo+ID4gKyAgICAgICByZXQgPSBkd19taXBp
X2RzaV9iaW5kKGRzaS0+bWlwaV9kc2ksICZkc2ktPmVuY29kZXIpOwo+ID4gKyAgICAgICBpZiAo
cmV0KSB7Cj4gPiArICAgICAgICAgICAgICAgRFJNX0RFVl9FUlJPUihkZXYsICJGYWlsZWQgdG8g
YmluZDogJWRcbiIsIHJldCk7Cj4gPiArICAgICAgICAgICAgICAgcmV0dXJuIHJldDsKPiA+ICsg
ICAgICAgfQo+ID4gKwo+ID4gKyAgICAgICByZXR1cm4gMDsKPiA+ICt9Cj4gPiArCj4gPiArc3Rh
dGljIHZvaWQgaW14X21pcGlfZHNpX3VuYmluZChzdHJ1Y3QgZGV2aWNlICpkZXYsIHN0cnVjdCBk
ZXZpY2UgKm1hc3RlciwKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdm9pZCAq
ZGF0YSkKPiA+ICt7Cj4gPiArICAgICAgIHN0cnVjdCBpbXhfbWlwaV9kc2kgKmRzaSA9IGRldl9n
ZXRfZHJ2ZGF0YShkZXYpOwo+ID4gKwo+ID4gKyAgICAgICBkd19taXBpX2RzaV91bmJpbmQoZHNp
LT5taXBpX2RzaSk7Cj4gPiArCj4gPiArICAgICAgIGNsa19kaXNhYmxlX3VucHJlcGFyZShkc2kt
PnBsbHJlZl9jbGspOwo+ID4gK30KPiA+ICsKPiA+ICtzdGF0aWMgY29uc3Qgc3RydWN0IGNvbXBv
bmVudF9vcHMgaW14X21pcGlfZHNpX29wcyA9IHsKPiA+ICsgICAgICAgLmJpbmQgICA9IGlteF9t
aXBpX2RzaV9iaW5kLAo+ID4gKyAgICAgICAudW5iaW5kID0gaW14X21pcGlfZHNpX3VuYmluZCwK
PiA+ICt9Owo+ID4gKwo+ID4gK3N0YXRpYyBpbnQgaW14X21pcGlfZHNpX3Byb2JlKHN0cnVjdCBw
bGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gPiArewo+ID4gKyAgICAgICBzdHJ1Y3QgZGV2aWNlICpk
ZXYgPSAmcGRldi0+ZGV2Owo+ID4gKyAgICAgICBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkICpv
Zl9pZCA9IG9mX21hdGNoX2RldmljZShpbXhfZHNpX2R0X2lkcywgZGV2KTsKPiA+ICsgICAgICAg
c3RydWN0IGR3X21pcGlfZHNpX3BsYXRfZGF0YSAqcGRhdGEgPSAoc3RydWN0IGR3X21pcGlfZHNp
X3BsYXRfZGF0YSAqKSBvZl9pZC0+ZGF0YTsKPiA+ICsgICAgICAgc3RydWN0IGlteF9taXBpX2Rz
aSAqZHNpOwo+ID4gKyAgICAgICBzdHJ1Y3QgcmVzb3VyY2UgKnJlczsKPiA+ICsgICAgICAgaW50
IHJldDsKPiA+ICsKPiA+ICsgICAgICAgZHNpID0gZGV2bV9remFsbG9jKGRldiwgc2l6ZW9mKCpk
c2kpLCBHRlBfS0VSTkVMKTsKPiA+ICsgICAgICAgaWYgKCFkc2kpCj4gPiArICAgICAgICAgICAg
ICAgcmV0dXJuIC1FTk9NRU07Cj4gPiArCj4gPiArICAgICAgIGRzaS0+ZGV2ID0gZGV2Owo+ID4g
Kwo+ID4gKyAgICAgICByZXMgPSBwbGF0Zm9ybV9nZXRfcmVzb3VyY2UocGRldiwgSU9SRVNPVVJD
RV9NRU0sIDApOwo+ID4gKyAgICAgICBkc2ktPmJhc2UgPSBkZXZtX2lvcmVtYXBfcmVzb3VyY2Uo
ZGV2LCByZXMpOwo+ID4gKyAgICAgICBpZiAoSVNfRVJSKGRzaS0+YmFzZSkpIHsKPiA+ICsgICAg
ICAgICAgICAgICByZXQgPSBQVFJfRVJSKGRzaS0+YmFzZSk7Cj4gPiArICAgICAgICAgICAgICAg
RFJNX0RFVl9FUlJPUihkZXYsICJVbmFibGUgdG8gZ2V0IGRzaSByZWdpc3RlcnM6ICVkXG4iLCBy
ZXQpOwo+ID4gKyAgICAgICAgICAgICAgIHJldHVybiByZXQ7Cj4gPiArICAgICAgIH0KPiA+ICsK
PiA+ICsgICAgICAgZHNpLT5wbGxyZWZfY2xrID0gZGV2bV9jbGtfZ2V0KGRldiwgInJlZiIpOwo+
ID4gKyAgICAgICBpZiAoSVNfRVJSKGRzaS0+cGxscmVmX2NsaykpIHsKPiA+ICsgICAgICAgICAg
ICAgICByZXQgPSBQVFJfRVJSKGRzaS0+cGxscmVmX2Nsayk7Cj4gPiArICAgICAgICAgICAgICAg
RFJNX0RFVl9FUlJPUihkZXYsICJVbmFibGUgdG8gZ2V0IHBsbHJlZl9jbGs6ICVkXG4iLCByZXQp
Owo+ID4gKyAgICAgICAgICAgICAgIHJldHVybiByZXQ7Cj4gPiArICAgICAgIH0KPiA+ICsKPiA+
ICsgICAgICAgZHNpLT5tdXhfc2VsID0gc3lzY29uX3JlZ21hcF9sb29rdXBfYnlfcGhhbmRsZShk
ZXYtPm9mX25vZGUsICJmc2wsZ3ByIik7Cj4gPiArICAgICAgIGlmIChJU19FUlIoZHNpLT5tdXhf
c2VsKSkgewo+ID4gKyAgICAgICAgICAgICAgIHJldCA9IFBUUl9FUlIoZHNpLT5tdXhfc2VsKTsK
PiA+ICsgICAgICAgICAgICAgICBEUk1fREVWX0VSUk9SKGRldiwgIkZhaWxlZCB0byBnZXQgR1BS
IHJlZ21hcDogJWRcbiIsIHJldCk7Cj4gPiArICAgICAgICAgICAgICAgcmV0dXJuIHJldDsKPiA+
ICsgICAgICAgfQo+ID4gKwo+ID4gKyAgICAgICBkZXZfc2V0X2RydmRhdGEoZGV2LCBkc2kpOwo+
ID4gKwo+ID4gKyAgICAgICBpbXg2cV9taXBpX2RzaV9kcnZfZGF0YS5iYXNlID0gZHNpLT5iYXNl
Owo+ID4gKyAgICAgICBpbXg2cV9taXBpX2RzaV9kcnZfZGF0YS5wcml2X2RhdGEgPSBkc2k7Cj4g
PiArCj4gPiArICAgICAgIGRzaS0+bWlwaV9kc2kgPSBkd19taXBpX2RzaV9wcm9iZShwZGV2LCBw
ZGF0YSk7Cj4gPiArICAgICAgIGlmIChJU19FUlIoZHNpLT5taXBpX2RzaSkpIHsKPiA+ICsgICAg
ICAgICAgICAgICByZXQgPSBQVFJfRVJSKGRzaS0+bWlwaV9kc2kpOwo+ID4gKyAgICAgICAgICAg
ICAgIERSTV9ERVZfRVJST1IoZGV2LCAiRmFpbGVkIHRvIHByb2JlIERXIERTSSBob3N0OiAlZFxu
IiwgcmV0KTsKPiA+ICsgICAgICAgICAgICAgICBnb3RvIGVycl9jbGtkaXNhYmxlOwo+ID4gKyAg
ICAgICB9Cj4gPiArCj4gPiArICAgICAgIHJldHVybiBjb21wb25lbnRfYWRkKCZwZGV2LT5kZXYs
ICZpbXhfbWlwaV9kc2lfb3BzKTsKPiA+ICsKPiA+ICtlcnJfY2xrZGlzYWJsZToKPiA+ICsgICAg
ICAgY2xrX2Rpc2FibGVfdW5wcmVwYXJlKGRzaS0+cGxscmVmX2Nsayk7Cj4gPiArICAgICAgIHJl
dHVybiByZXQ7Cj4gPiArfQo+ID4gKwo+ID4gK3N0YXRpYyBpbnQgaW14X21pcGlfZHNpX3JlbW92
ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ID4gK3sKPiA+ICsgICAgICAgY29tcG9u
ZW50X2RlbCgmcGRldi0+ZGV2LCAmaW14X21pcGlfZHNpX29wcyk7Cj4gPiArICAgICAgIHJldHVy
biAwOwo+ID4gK30KPiA+ICsKPiA+ICtzdGF0aWMgc3RydWN0IHBsYXRmb3JtX2RyaXZlciBpbXhf
bWlwaV9kc2lfZHJpdmVyID0gewo+ID4gKyAgICAgICAucHJvYmUgICAgICAgICAgPSBpbXhfbWlw
aV9kc2lfcHJvYmUsCj4gPiArICAgICAgIC5yZW1vdmUgICAgICAgICA9IGlteF9taXBpX2RzaV9y
ZW1vdmUsCj4gPiArICAgICAgIC5kcml2ZXIgICAgICAgICA9IHsKPiA+ICsgICAgICAgICAgICAg
ICAub2ZfbWF0Y2hfdGFibGUgPSBpbXhfZHNpX2R0X2lkcywKPiA+ICsgICAgICAgICAgICAgICAu
bmFtZSAgID0gImR3LW1pcGktZHNpLWlteDYiLAo+ID4gKyAgICAgICB9LAo+ID4gK307Cj4gPiAr
bW9kdWxlX3BsYXRmb3JtX2RyaXZlcihpbXhfbWlwaV9kc2lfZHJpdmVyKTsKPiA+ICsKPiA+ICtN
T0RVTEVfREVTQ1JJUFRJT04oImkuTVg2IE1JUEkgRFNJIGhvc3QgY29udHJvbGxlciBkcml2ZXIi
KTsKPiA+ICtNT0RVTEVfQVVUSE9SKCJMaXUgWWluZyA8dmljdG9yLmxpdUBueHAuY29tPiIpOwo+
ID4gK01PRFVMRV9BVVRIT1IoIkFkcmlhbiBSYXRpdSA8YWRyaWFuLnJhdGl1QGNvbGxhYm9yYS5j
b20+Iik7Cj4gPiArTU9EVUxFX0xJQ0VOU0UoIkdQTCIpOwoKLS0gClJlZ2FyZHMsCgpMYXVyZW50
IFBpbmNoYXJ0CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXJvY2tjaGlwCg==
