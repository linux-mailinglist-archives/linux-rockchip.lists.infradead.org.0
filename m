Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA2A71AAC57
	for <lists+linux-rockchip@lfdr.de>; Wed, 15 Apr 2020 17:53:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k/JcIOi1xXIUGNh8nEbpvM0BhtbgPoWvN9oPIf1/m7A=; b=VHmRrI4mbW11fo
	aqkIf/O1Je+BRf+6fnI6GQCdh4tqEaKA9Tb31pDUEBKeJnqnuUFm2dsUEdOldXQqoAuIp1J9v7p/J
	Fbb6L/06X1o7NMjRMUJ7R9iT+9+ksID6j7OWhi8rt9y0Oz5o4GM/BljpuADw/36WGlijwex52tklc
	tO+5fkyQVW1j2QbV+OOsFIWsMSZxEIOa8u9VNN71+ieHjWPduRZHSqfd/lDadHhwybvoLawHtVSd6
	yJMk7JIM4GF2QRlmbmT73lyQvcf+ccIr8QPmEkwlaNdltXSlYRZDJyKXbgJp3QdsqGNRLRRw809nE
	Ry9vTBjamsldy7bUJ57w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOkMD-0007jV-KK; Wed, 15 Apr 2020 15:53:45 +0000
Received: from mail-qv1-xf42.google.com ([2607:f8b0:4864:20::f42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOkM3-0007Xw-8C; Wed, 15 Apr 2020 15:53:37 +0000
Received: by mail-qv1-xf42.google.com with SMTP id s18so287920qvn.1;
 Wed, 15 Apr 2020 08:53:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=fgMvpPCQJWFCosyE7dZRbMhEbQ67Lc7QAxyc+/m5qdY=;
 b=VlQG9cCtz6EXkYbq2dBLs+dgaDVmuO94Gj59uScBaYRtMGr5sGV2vGbygVtLMH6n8d
 arPfw2cWby5Ve+F4tL7gxyMrbqlp+yoQyHy0jTOs4TL8Cxuvpqldr1IrVLkV7fFI0vy7
 0jUaSi12XleYxSJYFzZobXnHQyxPu8IBt4R4Eo07YcRJhxOts7WxOiPtsBdRFUmNYPj9
 iVu7CvY03PtmN4MbKk851Br/SGy8vhSXm5uDCzPDJI4YkiDI/gtdbSRARbPxDNu95YyA
 H6c5kvjj10btqP655/Y7pRy94EYteLQX2AfjB5PcprqBKMRyXTuDAumFDxfhB+WqEZlI
 matg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=fgMvpPCQJWFCosyE7dZRbMhEbQ67Lc7QAxyc+/m5qdY=;
 b=BIb8gMhri57wu7WTYKxHTEbMcQgOa5R57cvyhZ3uJ3/MJO1ep3cPotTQVvDROeZ+Pj
 M7gUmduUfbOEIxNeB5aklTovIBMCP7gGnih6QB+xYgF2UXXMLj+bLxH1I0KF56Rfg2WC
 chnu5DW/agYhJjasV+qSp0+Lze+WA/g1a979HpLkF/B9hr1yytfxudpRCgxHY1kDTrv4
 AVyfWuwzbavlONUZPdeSVfByU2N1BhZpafUD/2DovL0imSNNNJDYtJZ2/MHSRDoCy+JR
 RAUPHvBAPxmb+l1bjYENzP+f5niwTbq8JCSBkxycw2jl0Akr1yhc9AQAh9m84a1waVjB
 dgLw==
X-Gm-Message-State: AGi0PuacjDgXTCi8wyxFSjrTkCyTZaV4cB4RJ5N5ECibsPJJAKplNIFD
 8+euN5qC/kDy6ayGqKHhppueM8eGnL5kU0nyZPs=
X-Google-Smtp-Source: APiQypLYNSAsouX1ooyiUh71xZmQBD0ngaPXDC3Is79NyyLy7NbA/Z9439MDOkUeQwjgEdx1/+UuYAVhywTMmH0NWwU=
X-Received: by 2002:a0c:f748:: with SMTP id e8mr5544910qvo.237.1586966013181; 
 Wed, 15 Apr 2020 08:53:33 -0700 (PDT)
MIME-Version: 1.0
References: <20200414151955.311949-1-adrian.ratiu@collabora.com>
 <20200414151955.311949-2-adrian.ratiu@collabora.com>
In-Reply-To: <20200414151955.311949-2-adrian.ratiu@collabora.com>
From: Enric Balletbo Serra <eballetbo@gmail.com>
Date: Wed, 15 Apr 2020 17:53:22 +0200
Message-ID: <CAFqH_52eKB4jtmn5e4HQubv8ijOPqDqncp1dRGahhU3NOorJMQ@mail.gmail.com>
Subject: Re: [PATCH v6 1/8] drm: bridge: dw_mipi_dsi: add initial regmap
 infrastructure
To: Adrian Ratiu <adrian.ratiu@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_085335_320281_427FFDE6 
X-CRM114-Status: GOOD (  25.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:f42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [eballetbo[at]gmail.com]
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
 Jonas Karlman <jonas@kwiboo.se>, linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Andrzej Hajda <a.hajda@samsung.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Arnaud Ferraris <arnaud.ferraris@collabora.com>,
 Collabora Kernel ML <kernel@collabora.com>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-imx@nxp.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SGkgQWRyaWFuLAoKU29tZSBmZXcgY29tbWVudHMvbml0cyBiZWxvdywKCk1pc3NhdGdlIGRlIEFk
cmlhbiBSYXRpdSA8YWRyaWFuLnJhdGl1QGNvbGxhYm9yYS5jb20+IGRlbCBkaWEgZHQuLCAxNApk
4oCZYWJyLiAyMDIwIGEgbGVzIDE3OjE5Ogo+Cj4gSW4gb3JkZXIgdG8gc3VwcG9ydCBtdWx0aXBs
ZSB2ZXJzaW9ucyBvZiB0aGUgU3lub3BzaXMgTUlQSSBEU0kgaG9zdAo+IGNvbnRyb2xsZXIsIHdo
aWNoIGhhdmUgZGlmZmVyZW50IHJlZ2lzdGVyIGxheW91dHMgYnV0IGFsbW9zdCBpZGVudGljYWwK
PiBIVyBwcm90b2NvbHMsIHdlIGFkZCBhIHJlZ21hcCBpbmZyYXN0cnVjdHVyZSB3aGljaCBjYW4g
YWJzdHJhY3QgYXdheQo+IHJlZ2lzdGVyIGFjY2Vzc2VzIGZvciBwbGF0Zm9ybSBkcml2ZXJzIHVz
aW5nIHRoZSBicmlkZ2UuCj4KPiBUaGUgY29udHJvbGxlciBIVyByZXZpc2lvbiBpcyBkZXRlY3Rl
ZCBkdXJpbmcgYnJpZGdlIHByb2JlIHdoaWNoIHdpbGwKPiBiZSB1c2VkIGluIGZ1dHVyZSBjb21t
aXRzIHRvIGxvYWQgdGhlIHJlbGV2YW50IHJlZ2lzdGVyIGxheW91dCB3aGljaAo+IHRoZSBicmlk
Z2Ugd2lsbCB1c2UgdHJhbnNwYXJlbnRseSB0byB0aGUgcGxhdGZvcm0gZHJpdmVycy4KPgo+IFN1
Z2dlc3RlZC1ieTogRXplcXVpZWwgR2FyY2lhIDxlemVxdWllbEBjb2xsYWJvcmEuY29tPgo+IFRl
c3RlZC1ieTogQWRyaWFuIFBvcCA8cG9wLmFkcmlhbjYxQGdtYWlsLmNvbT4KPiBUZXN0ZWQtYnk6
IEFybmF1ZCBGZXJyYXJpcyA8YXJuYXVkLmZlcnJhcmlzQGNvbGxhYm9yYS5jb20+Cj4gU2lnbmVk
LW9mZi1ieTogQWRyaWFuIFJhdGl1IDxhZHJpYW4ucmF0aXVAY29sbGFib3JhLmNvbT4KPiAtLS0K
PiBOZXcgaW4gdjUuCj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9icmlkZ2Uvc3lub3BzeXMvZHct
bWlwaS1kc2kuYyB8IDIwOCArKysrKysrKysrLS0tLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDEx
NyBpbnNlcnRpb25zKCspLCA5MSBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vYnJpZGdlL3N5bm9wc3lzL2R3LW1pcGktZHNpLmMgYi9kcml2ZXJzL2dwdS9kcm0v
YnJpZGdlL3N5bm9wc3lzL2R3LW1pcGktZHNpLmMKPiBpbmRleCA1ZWYwZjE1NGFhN2IuLjZkOWUy
ZjIxYzljYyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vYnJpZGdlL3N5bm9wc3lzL2R3
LW1pcGktZHNpLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vYnJpZGdlL3N5bm9wc3lzL2R3LW1p
cGktZHNpLmMKPiBAQCAtMTUsNiArMTUsNyBAQAo+ICAjaW5jbHVkZSA8bGludXgvbW9kdWxlLmg+
Cj4gICNpbmNsdWRlIDxsaW51eC9vZl9kZXZpY2UuaD4KPiAgI2luY2x1ZGUgPGxpbnV4L3BtX3J1
bnRpbWUuaD4KPiArI2luY2x1ZGUgPGxpbnV4L3JlZ21hcC5oPgoKU2hvdWxkIEtjb25maWcgc2Vs
ZWN0IFJFR01BUCBmb3IgdGhpcyBkcml2ZXI/Cgo+ICAjaW5jbHVkZSA8bGludXgvcmVzZXQuaD4K
Pgo+ICAjaW5jbHVkZSA8dmlkZW8vbWlwaV9kaXNwbGF5Lmg+Cj4gQEAgLTIyNyw2ICsyMjgsNyBA
QCBzdHJ1Y3QgZHdfbWlwaV9kc2kgewo+ICAgICAgICAgc3RydWN0IGRybV9icmlkZ2UgKnBhbmVs
X2JyaWRnZTsKPiAgICAgICAgIHN0cnVjdCBkZXZpY2UgKmRldjsKPiAgICAgICAgIHZvaWQgX19p
b21lbSAqYmFzZTsKPiArICAgICAgIHN0cnVjdCByZWdtYXAgKnJlZ3M7Cj4KPiAgICAgICAgIHN0
cnVjdCBjbGsgKnBjbGs7Cj4KPiBAQCAtMjM1LDYgKzIzNyw3IEBAIHN0cnVjdCBkd19taXBpX2Rz
aSB7Cj4gICAgICAgICB1MzIgbGFuZXM7Cj4gICAgICAgICB1MzIgZm9ybWF0Owo+ICAgICAgICAg
dW5zaWduZWQgbG9uZyBtb2RlX2ZsYWdzOwo+ICsgICAgICAgdTMyIGh3X3ZlcnNpb247Cj4KPiAg
I2lmZGVmIENPTkZJR19ERUJVR19GUwo+ICAgICAgICAgc3RydWN0IGRlbnRyeSAqZGVidWdmczsK
PiBAQCAtMjQ5LDYgKzI1MiwxMyBAQCBzdHJ1Y3QgZHdfbWlwaV9kc2kgewo+ICAgICAgICAgY29u
c3Qgc3RydWN0IGR3X21pcGlfZHNpX3BsYXRfZGF0YSAqcGxhdF9kYXRhOwo+ICB9Owo+Cj4gK3N0
YXRpYyBjb25zdCBzdHJ1Y3QgcmVnbWFwX2NvbmZpZyBkd19taXBpX2RzaV9yZWdtYXBfY2ZnID0g
ewo+ICsgICAgICAgLnJlZ19iaXRzID0gMzIsCj4gKyAgICAgICAudmFsX2JpdHMgPSAzMiwKPiAr
ICAgICAgIC5yZWdfc3RyaWRlID0gNCwKPiArICAgICAgIC5uYW1lID0gImR3LW1pcGktZHNpIiwK
PiArfTsKPiArCj4gIC8qCj4gICAqIENoZWNrIGlmIGVpdGhlciBhIGxpbmsgdG8gYSBtYXN0ZXIg
b3Igc2xhdmUgaXMgcHJlc2VudAo+ICAgKi8KPiBAQCAtMjgwLDE2ICsyOTAsNiBAQCBzdGF0aWMg
aW5saW5lIHN0cnVjdCBkd19taXBpX2RzaSAqYnJpZGdlX3RvX2RzaShzdHJ1Y3QgZHJtX2JyaWRn
ZSAqYnJpZGdlKQo+ICAgICAgICAgcmV0dXJuIGNvbnRhaW5lcl9vZihicmlkZ2UsIHN0cnVjdCBk
d19taXBpX2RzaSwgYnJpZGdlKTsKPiAgfQo+Cj4gLXN0YXRpYyBpbmxpbmUgdm9pZCBkc2lfd3Jp
dGUoc3RydWN0IGR3X21pcGlfZHNpICpkc2ksIHUzMiByZWcsIHUzMiB2YWwpCj4gLXsKPiAtICAg
ICAgIHdyaXRlbCh2YWwsIGRzaS0+YmFzZSArIHJlZyk7Cj4gLX0KPiAtCj4gLXN0YXRpYyBpbmxp
bmUgdTMyIGRzaV9yZWFkKHN0cnVjdCBkd19taXBpX2RzaSAqZHNpLCB1MzIgcmVnKQo+IC17Cj4g
LSAgICAgICByZXR1cm4gcmVhZGwoZHNpLT5iYXNlICsgcmVnKTsKPiAtfQo+IC0KPiAgc3RhdGlj
IGludCBkd19taXBpX2RzaV9ob3N0X2F0dGFjaChzdHJ1Y3QgbWlwaV9kc2lfaG9zdCAqaG9zdCwK
PiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHN0cnVjdCBtaXBpX2RzaV9kZXZp
Y2UgKmRldmljZSkKPiAgewo+IEBAIC0zNjYsMjkgKzM2NiwyOSBAQCBzdGF0aWMgdm9pZCBkd19t
aXBpX21lc3NhZ2VfY29uZmlnKHN0cnVjdCBkd19taXBpX2RzaSAqZHNpLAo+ICAgICAgICAgaWYg
KGxwbSkKPiAgICAgICAgICAgICAgICAgdmFsIHw9IENNRF9NT0RFX0FMTF9MUDsKPgo+IC0gICAg
ICAgZHNpX3dyaXRlKGRzaSwgRFNJX0xQQ0xLX0NUUkwsIGxwbSA/IDAgOiBQSFlfVFhSRVFVRVNU
Q0xLSFMpOwo+IC0gICAgICAgZHNpX3dyaXRlKGRzaSwgRFNJX0NNRF9NT0RFX0NGRywgdmFsKTsK
PiArICAgICAgIHJlZ21hcF93cml0ZShkc2ktPnJlZ3MsIERTSV9MUENMS19DVFJMLCBscG0gPyAw
IDogUEhZX1RYUkVRVUVTVENMS0hTKTsKPiArICAgICAgIHJlZ21hcF93cml0ZShkc2ktPnJlZ3Ms
IERTSV9DTURfTU9ERV9DRkcsIHZhbCk7Cj4gIH0KPgo+ICBzdGF0aWMgaW50IGR3X21pcGlfZHNp
X2dlbl9wa3RfaGRyX3dyaXRlKHN0cnVjdCBkd19taXBpX2RzaSAqZHNpLCB1MzIgaGRyX3ZhbCkK
PiAgewo+ICAgICAgICAgaW50IHJldDsKPiAtICAgICAgIHUzMiB2YWwsIG1hc2s7Cj4gKyAgICAg
ICB1MzIgdmFsID0gMCwgbWFzazsKPgoKSSB0aGluayB0aGF0IHRoaXMgY2hhbmdlIGlzIG5vdCBu
ZWVkZWQsIGB2YWxgIGlzIGFuIGlucHV0IHZhcmlhYmxlCnRoYXQgd2lsbCBiZSBvdmVyd3JpdHRl
biBpbnNpZGUgdGhlIHJlZ21hcF9yZWFkX3BvbGxfdGltZW91dC4KSW5pdGlhbGl6ZSBoZXJlIGlz
IG5vdCBuZWVkZWQuCgo+IC0gICAgICAgcmV0ID0gcmVhZGxfcG9sbF90aW1lb3V0KGRzaS0+YmFz
ZSArIERTSV9DTURfUEtUX1NUQVRVUywKPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICB2YWwsICEodmFsICYgR0VOX0NNRF9GVUxMKSwgMTAwMCwKPiAtICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICBDTURfUEtUX1NUQVRVU19USU1FT1VUX1VTKTsKPiArICAgICAgIHJldCA9
IHJlZ21hcF9yZWFkX3BvbGxfdGltZW91dChkc2ktPnJlZ3MsIERTSV9DTURfUEtUX1NUQVRVUywK
PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB2YWwsICEodmFsICYgR0VO
X0NNRF9GVUxMKSwgMTAwMCwKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBDTURfUEtUX1NUQVRVU19USU1FT1VUX1VTKTsKPiAgICAgICAgIGlmIChyZXQpIHsKPiAgICAg
ICAgICAgICAgICAgZGV2X2Vycihkc2ktPmRldiwgImZhaWxlZCB0byBnZXQgYXZhaWxhYmxlIGNv
bW1hbmQgRklGT1xuIik7Cj4gICAgICAgICAgICAgICAgIHJldHVybiByZXQ7Cj4gICAgICAgICB9
Cj4KPiAtICAgICAgIGRzaV93cml0ZShkc2ksIERTSV9HRU5fSERSLCBoZHJfdmFsKTsKPiArICAg
ICAgIHJlZ21hcF93cml0ZShkc2ktPnJlZ3MsIERTSV9HRU5fSERSLCBoZHJfdmFsKTsKPgo+ICAg
ICAgICAgbWFzayA9IEdFTl9DTURfRU1QVFkgfCBHRU5fUExEX1dfRU1QVFk7Cj4gLSAgICAgICBy
ZXQgPSByZWFkbF9wb2xsX3RpbWVvdXQoZHNpLT5iYXNlICsgRFNJX0NNRF9QS1RfU1RBVFVTLAo+
IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHZhbCwgKHZhbCAmIG1hc2spID09IG1h
c2ssCj4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgMTAwMCwgQ01EX1BLVF9TVEFU
VVNfVElNRU9VVF9VUyk7Cj4gKyAgICAgICByZXQgPSByZWdtYXBfcmVhZF9wb2xsX3RpbWVvdXQo
ZHNpLT5yZWdzLCBEU0lfQ01EX1BLVF9TVEFUVVMsCj4gKyAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgdmFsLCAodmFsICYgbWFzaykgPT0gbWFzaywKPiArICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAxMDAwLCBDTURfUEtUX1NUQVRVU19USU1FT1VUX1VT
KTsKPiAgICAgICAgIGlmIChyZXQpIHsKPiAgICAgICAgICAgICAgICAgZGV2X2Vycihkc2ktPmRl
diwgImZhaWxlZCB0byB3cml0ZSBjb21tYW5kIEZJRk9cbiIpOwo+ICAgICAgICAgICAgICAgICBy
ZXR1cm4gcmV0Owo+IEBAIC00MDMsMjQgKzQwMywyNiBAQCBzdGF0aWMgaW50IGR3X21pcGlfZHNp
X3dyaXRlKHN0cnVjdCBkd19taXBpX2RzaSAqZHNpLAo+ICAgICAgICAgY29uc3QgdTggKnR4X2J1
ZiA9IHBhY2tldC0+cGF5bG9hZDsKPiAgICAgICAgIGludCBsZW4gPSBwYWNrZXQtPnBheWxvYWRf
bGVuZ3RoLCBwbGRfZGF0YV9ieXRlcyA9IHNpemVvZih1MzIpLCByZXQ7Cj4gICAgICAgICBfX2xl
MzIgd29yZDsKPiAtICAgICAgIHUzMiB2YWw7Cj4gKyAgICAgICB1MzIgdmFsID0gMDsKPgoKVGhl
IHNhbWUgaGVyZSwgJ3ZhbCcgaXMgdXNlZCBmb3IgdGhlIHJlZ21hcF9yZWFkX3BvbGxfdGltZW91
dCBhbmQgd2lsbApiZSBvdmVyd3JpdHRlbiwgbm8gbmVlZCB0byBpbml0aWFsaXplLgoKPiAgICAg
ICAgIHdoaWxlIChsZW4pIHsKPiAgICAgICAgICAgICAgICAgaWYgKGxlbiA8IHBsZF9kYXRhX2J5
dGVzKSB7Cj4gICAgICAgICAgICAgICAgICAgICAgICAgd29yZCA9IDA7Cj4gICAgICAgICAgICAg
ICAgICAgICAgICAgbWVtY3B5KCZ3b3JkLCB0eF9idWYsIGxlbik7Cj4gLSAgICAgICAgICAgICAg
ICAgICAgICAgZHNpX3dyaXRlKGRzaSwgRFNJX0dFTl9QTERfREFUQSwgbGUzMl90b19jcHUod29y
ZCkpOwo+ICsgICAgICAgICAgICAgICAgICAgICAgIHJlZ21hcF93cml0ZShkc2ktPnJlZ3MsIERT
SV9HRU5fUExEX0RBVEEsCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGxl
MzJfdG9fY3B1KHdvcmQpKTsKPiAgICAgICAgICAgICAgICAgICAgICAgICBsZW4gPSAwOwo+ICAg
ICAgICAgICAgICAgICB9IGVsc2Ugewo+ICAgICAgICAgICAgICAgICAgICAgICAgIG1lbWNweSgm
d29yZCwgdHhfYnVmLCBwbGRfZGF0YV9ieXRlcyk7Cj4gLSAgICAgICAgICAgICAgICAgICAgICAg
ZHNpX3dyaXRlKGRzaSwgRFNJX0dFTl9QTERfREFUQSwgbGUzMl90b19jcHUod29yZCkpOwo+ICsg
ICAgICAgICAgICAgICAgICAgICAgIHJlZ21hcF93cml0ZShkc2ktPnJlZ3MsIERTSV9HRU5fUExE
X0RBVEEsCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGxlMzJfdG9fY3B1
KHdvcmQpKTsKPiAgICAgICAgICAgICAgICAgICAgICAgICB0eF9idWYgKz0gcGxkX2RhdGFfYnl0
ZXM7Cj4gICAgICAgICAgICAgICAgICAgICAgICAgbGVuIC09IHBsZF9kYXRhX2J5dGVzOwo+ICAg
ICAgICAgICAgICAgICB9Cj4KPiAtICAgICAgICAgICAgICAgcmV0ID0gcmVhZGxfcG9sbF90aW1l
b3V0KGRzaS0+YmFzZSArIERTSV9DTURfUEtUX1NUQVRVUywKPiAtICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIHZhbCwgISh2YWwgJiBHRU5fUExEX1dfRlVMTCksIDEwMDAs
Cj4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBDTURfUEtUX1NUQVRV
U19USU1FT1VUX1VTKTsKPiArICAgICAgICAgICAgICAgcmV0ID0gcmVnbWFwX3JlYWRfcG9sbF90
aW1lb3V0KGRzaS0+cmVncywgRFNJX0NNRF9QS1RfU1RBVFVTLAo+ICsgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdmFsLCAhKHZhbCAmIEdFTl9QTERfV19GVUxM
KSwKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDEwMDAs
IENNRF9QS1RfU1RBVFVTX1RJTUVPVVRfVVMpOwo+ICAgICAgICAgICAgICAgICBpZiAocmV0KSB7
Cj4gICAgICAgICAgICAgICAgICAgICAgICAgZGV2X2Vycihkc2ktPmRldiwKPiAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICJmYWlsZWQgdG8gZ2V0IGF2YWlsYWJsZSB3cml0ZSBwYXls
b2FkIEZJRk9cbiIpOwo+IEBAIC00MzgsMTIgKzQ0MCwxMiBAQCBzdGF0aWMgaW50IGR3X21pcGlf
ZHNpX3JlYWQoc3RydWN0IGR3X21pcGlfZHNpICpkc2ksCj4gIHsKPiAgICAgICAgIGludCBpLCBq
LCByZXQsIGxlbiA9IG1zZy0+cnhfbGVuOwo+ICAgICAgICAgdTggKmJ1ZiA9IG1zZy0+cnhfYnVm
Owo+IC0gICAgICAgdTMyIHZhbDsKPiArICAgICAgIHUzMiB2YWwgPSAwOwo+CgpkaXR0bwoKPiAg
ICAgICAgIC8qIFdhaXQgZW5kIG9mIHRoZSByZWFkIG9wZXJhdGlvbiAqLwo+IC0gICAgICAgcmV0
ID0gcmVhZGxfcG9sbF90aW1lb3V0KGRzaS0+YmFzZSArIERTSV9DTURfUEtUX1NUQVRVUywKPiAt
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB2YWwsICEodmFsICYgR0VOX1JEX0NNRF9C
VVNZKSwKPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAxMDAwLCBDTURfUEtUX1NU
QVRVU19USU1FT1VUX1VTKTsKPiArICAgICAgIHJldCA9IHJlZ21hcF9yZWFkX3BvbGxfdGltZW91
dChkc2ktPnJlZ3MsIERTSV9DTURfUEtUX1NUQVRVUywKPiArICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICB2YWwsICEodmFsICYgR0VOX1JEX0NNRF9CVVNZKSwKPiArICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAxMDAwLCBDTURfUEtUX1NUQVRVU19USU1F
T1VUX1VTKTsKPiAgICAgICAgIGlmIChyZXQpIHsKPiAgICAgICAgICAgICAgICAgZGV2X2Vycihk
c2ktPmRldiwgIlRpbWVvdXQgZHVyaW5nIHJlYWQgb3BlcmF0aW9uXG4iKTsKPiAgICAgICAgICAg
ICAgICAgcmV0dXJuIHJldDsKPiBAQCAtNDUxLDE1ICs0NTMsMTUgQEAgc3RhdGljIGludCBkd19t
aXBpX2RzaV9yZWFkKHN0cnVjdCBkd19taXBpX2RzaSAqZHNpLAo+Cj4gICAgICAgICBmb3IgKGkg
PSAwOyBpIDwgbGVuOyBpICs9IDQpIHsKPiAgICAgICAgICAgICAgICAgLyogUmVhZCBmaWZvIG11
c3Qgbm90IGJlIGVtcHR5IGJlZm9yZSBhbGwgYnl0ZXMgYXJlIHJlYWQgKi8KPiAtICAgICAgICAg
ICAgICAgcmV0ID0gcmVhZGxfcG9sbF90aW1lb3V0KGRzaS0+YmFzZSArIERTSV9DTURfUEtUX1NU
QVRVUywKPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHZhbCwgISh2
YWwgJiBHRU5fUExEX1JfRU1QVFkpLAo+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgMTAwMCwgQ01EX1BLVF9TVEFUVVNfVElNRU9VVF9VUyk7Cj4gKyAgICAgICAgICAg
ICAgIHJldCA9IHJlZ21hcF9yZWFkX3BvbGxfdGltZW91dChkc2ktPnJlZ3MsIERTSV9DTURfUEtU
X1NUQVRVUywKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IHZhbCwgISh2YWwgJiBHRU5fUExEX1JfRU1QVFkpLAo+ICsgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgMTAwMCwgQ01EX1BLVF9TVEFUVVNfVElNRU9VVF9VUyk7
Cj4gICAgICAgICAgICAgICAgIGlmIChyZXQpIHsKPiAgICAgICAgICAgICAgICAgICAgICAgICBk
ZXZfZXJyKGRzaS0+ZGV2LCAiUmVhZCBwYXlsb2FkIEZJRk8gaXMgZW1wdHlcbiIpOwo+ICAgICAg
ICAgICAgICAgICAgICAgICAgIHJldHVybiByZXQ7Cj4gICAgICAgICAgICAgICAgIH0KPgo+IC0g
ICAgICAgICAgICAgICB2YWwgPSBkc2lfcmVhZChkc2ksIERTSV9HRU5fUExEX0RBVEEpOwo+ICsg
ICAgICAgICAgICAgICByZWdtYXBfcmVhZChkc2ktPnJlZ3MsIERTSV9HRU5fUExEX0RBVEEsICZ2
YWwpOwo+ICAgICAgICAgICAgICAgICBmb3IgKGogPSAwOyBqIDwgNCAmJiBqICsgaSA8IGxlbjsg
aisrKQo+ICAgICAgICAgICAgICAgICAgICAgICAgIGJ1ZltpICsgal0gPSB2YWwgPj4gKDggKiBq
KTsKPiAgICAgICAgIH0KPiBAQCAtNTM2LDI5ICs1MzgsMjkgQEAgc3RhdGljIHZvaWQgZHdfbWlw
aV9kc2lfdmlkZW9fbW9kZV9jb25maWcoc3RydWN0IGR3X21pcGlfZHNpICpkc2kpCj4gICAgICAg
ICB9Cj4gICNlbmRpZiAvKiBDT05GSUdfREVCVUdfRlMgKi8KPgo+IC0gICAgICAgZHNpX3dyaXRl
KGRzaSwgRFNJX1ZJRF9NT0RFX0NGRywgdmFsKTsKPiArICAgICAgIHJlZ21hcF93cml0ZShkc2kt
PnJlZ3MsIERTSV9WSURfTU9ERV9DRkcsIHZhbCk7Cj4gIH0KPgo+ICBzdGF0aWMgdm9pZCBkd19t
aXBpX2RzaV9zZXRfbW9kZShzdHJ1Y3QgZHdfbWlwaV9kc2kgKmRzaSwKPiAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICB1bnNpZ25lZCBsb25nIG1vZGVfZmxhZ3MpCj4gIHsKPiAtICAg
ICAgIGRzaV93cml0ZShkc2ksIERTSV9QV1JfVVAsIFJFU0VUKTsKPiArICAgICAgIHJlZ21hcF93
cml0ZShkc2ktPnJlZ3MsIERTSV9QV1JfVVAsIFJFU0VUKTsKPgo+ICAgICAgICAgaWYgKG1vZGVf
ZmxhZ3MgJiBNSVBJX0RTSV9NT0RFX1ZJREVPKSB7Cj4gLSAgICAgICAgICAgICAgIGRzaV93cml0
ZShkc2ksIERTSV9NT0RFX0NGRywgRU5BQkxFX1ZJREVPX01PREUpOwo+ICsgICAgICAgICAgICAg
ICByZWdtYXBfd3JpdGUoZHNpLT5yZWdzLCBEU0lfTU9ERV9DRkcsIEVOQUJMRV9WSURFT19NT0RF
KTsKPiAgICAgICAgICAgICAgICAgZHdfbWlwaV9kc2lfdmlkZW9fbW9kZV9jb25maWcoZHNpKTsK
PiAtICAgICAgICAgICAgICAgZHNpX3dyaXRlKGRzaSwgRFNJX0xQQ0xLX0NUUkwsIFBIWV9UWFJF
UVVFU1RDTEtIUyk7Cj4gKyAgICAgICAgICAgICAgIHJlZ21hcF93cml0ZShkc2ktPnJlZ3MsIERT
SV9MUENMS19DVFJMLCBQSFlfVFhSRVFVRVNUQ0xLSFMpOwo+ICAgICAgICAgfSBlbHNlIHsKPiAt
ICAgICAgICAgICAgICAgZHNpX3dyaXRlKGRzaSwgRFNJX01PREVfQ0ZHLCBFTkFCTEVfQ01EX01P
REUpOwo+ICsgICAgICAgICAgICAgICByZWdtYXBfd3JpdGUoZHNpLT5yZWdzLCBEU0lfTU9ERV9D
RkcsIEVOQUJMRV9DTURfTU9ERSk7Cj4gICAgICAgICB9Cj4KPiAtICAgICAgIGRzaV93cml0ZShk
c2ksIERTSV9QV1JfVVAsIFBPV0VSVVApOwo+ICsgICAgICAgcmVnbWFwX3dyaXRlKGRzaS0+cmVn
cywgRFNJX1BXUl9VUCwgUE9XRVJVUCk7Cj4gIH0KPgo+ICBzdGF0aWMgdm9pZCBkd19taXBpX2Rz
aV9kaXNhYmxlKHN0cnVjdCBkd19taXBpX2RzaSAqZHNpKQo+ICB7Cj4gLSAgICAgICBkc2lfd3Jp
dGUoZHNpLCBEU0lfUFdSX1VQLCBSRVNFVCk7Cj4gLSAgICAgICBkc2lfd3JpdGUoZHNpLCBEU0lf
UEhZX1JTVFosIFBIWV9SU1RaKTsKPiArICAgICAgIHJlZ21hcF93cml0ZShkc2ktPnJlZ3MsIERT
SV9QV1JfVVAsIFJFU0VUKTsKPiArICAgICAgIHJlZ21hcF93cml0ZShkc2ktPnJlZ3MsIERTSV9Q
SFlfUlNUWiwgUEhZX1JTVFopOwo+ICB9Cj4KPiAgc3RhdGljIHZvaWQgZHdfbWlwaV9kc2lfaW5p
dChzdHJ1Y3QgZHdfbWlwaV9kc2kgKmRzaSkKPiBAQCAtNTczLDE0ICs1NzUsMTQgQEAgc3RhdGlj
IHZvaWQgZHdfbWlwaV9kc2lfaW5pdChzdHJ1Y3QgZHdfbWlwaV9kc2kgKmRzaSkKPiAgICAgICAg
ICAqLwo+ICAgICAgICAgdTMyIGVzY19jbGtfZGl2aXNpb24gPSAoZHNpLT5sYW5lX21icHMgPj4g
MykgLyAyMCArIDE7Cj4KPiAtICAgICAgIGRzaV93cml0ZShkc2ksIERTSV9QV1JfVVAsIFJFU0VU
KTsKPiArICAgICAgIHJlZ21hcF93cml0ZShkc2ktPnJlZ3MsIERTSV9QV1JfVVAsIFJFU0VUKTsK
Pgo+ICAgICAgICAgLyoKPiAgICAgICAgICAqIFRPRE8gZHcgZHJ2IGltcHJvdmVtZW50cwo+ICAg
ICAgICAgICogdGltZW91dCBjbG9jayBkaXZpc2lvbiBzaG91bGQgYmUgY29tcHV0ZWQgd2l0aCB0
aGUKPiAgICAgICAgICAqIGhpZ2ggc3BlZWQgdHJhbnNtaXNzaW9uIGNvdW50ZXIgdGltZW91dCBh
bmQgYnl0ZSBsYW5lLi4uCj4gICAgICAgICAgKi8KPiAtICAgICAgIGRzaV93cml0ZShkc2ksIERT
SV9DTEtNR1JfQ0ZHLCBUT19DTEtfRElWSVNJT04oMTApIHwKPiArICAgICAgIHJlZ21hcF93cml0
ZShkc2ktPnJlZ3MsIERTSV9DTEtNR1JfQ0ZHLCBUT19DTEtfRElWSVNJT04oMTApIHwKPiAgICAg
ICAgICAgICAgICAgICBUWF9FU0NfQ0xLX0RJVklTSU9OKGVzY19jbGtfZGl2aXNpb24pKTsKPiAg
fQo+Cj4gQEAgLTYwOSwyMiArNjExLDIyIEBAIHN0YXRpYyB2b2lkIGR3X21pcGlfZHNpX2RwaV9j
b25maWcoc3RydWN0IGR3X21pcGlfZHNpICpkc2ksCj4gICAgICAgICBpZiAobW9kZS0+ZmxhZ3Mg
JiBEUk1fTU9ERV9GTEFHX05IU1lOQykKPiAgICAgICAgICAgICAgICAgdmFsIHw9IEhTWU5DX0FD
VElWRV9MT1c7Cj4KPiAtICAgICAgIGRzaV93cml0ZShkc2ksIERTSV9EUElfVkNJRCwgRFBJX1ZD
SUQoZHNpLT5jaGFubmVsKSk7Cj4gLSAgICAgICBkc2lfd3JpdGUoZHNpLCBEU0lfRFBJX0NPTE9S
X0NPRElORywgY29sb3IpOwo+IC0gICAgICAgZHNpX3dyaXRlKGRzaSwgRFNJX0RQSV9DRkdfUE9M
LCB2YWwpOwo+ICsgICAgICAgcmVnbWFwX3dyaXRlKGRzaS0+cmVncywgRFNJX0RQSV9WQ0lELCBE
UElfVkNJRChkc2ktPmNoYW5uZWwpKTsKPiArICAgICAgIHJlZ21hcF93cml0ZShkc2ktPnJlZ3Ms
IERTSV9EUElfQ09MT1JfQ09ESU5HLCBjb2xvcik7Cj4gKyAgICAgICByZWdtYXBfd3JpdGUoZHNp
LT5yZWdzLCBEU0lfRFBJX0NGR19QT0wsIHZhbCk7Cj4gICAgICAgICAvKgo+ICAgICAgICAgICog
VE9ETyBkdyBkcnYgaW1wcm92ZW1lbnRzCj4gICAgICAgICAgKiBsYXJnZXN0IHBhY2tldCBzaXpl
cyBkdXJpbmcgaGZwIG9yIGR1cmluZyB2c2EvdnBiL3ZmcAo+ICAgICAgICAgICogc2hvdWxkIGJl
IGNvbXB1dGVkIGFjY29yZGluZyB0byBieXRlIGxhbmUsIGxhbmUgbnVtYmVyIGFuZCBvbmx5Cj4g
ICAgICAgICAgKiBpZiBzZW5kaW5nIGxwIGNtZHMgaW4gaGlnaCBzcGVlZCBpcyBlbmFibGUgKFBI
WV9UWFJFUVVFU1RDTEtIUykKPiAgICAgICAgICAqLwo+IC0gICAgICAgZHNpX3dyaXRlKGRzaSwg
RFNJX0RQSV9MUF9DTURfVElNLCBPVVRWQUNUX0xQQ01EX1RJTUUoNCkKPiArICAgICAgIHJlZ21h
cF93cml0ZShkc2ktPnJlZ3MsIERTSV9EUElfTFBfQ01EX1RJTSwgT1VUVkFDVF9MUENNRF9USU1F
KDQpCj4gICAgICAgICAgICAgICAgICAgfCBJTlZBQ1RfTFBDTURfVElNRSg0KSk7Cj4gIH0KPgo+
ICBzdGF0aWMgdm9pZCBkd19taXBpX2RzaV9wYWNrZXRfaGFuZGxlcl9jb25maWcoc3RydWN0IGR3
X21pcGlfZHNpICpkc2kpCj4gIHsKPiAtICAgICAgIGRzaV93cml0ZShkc2ksIERTSV9QQ0tIRExf
Q0ZHLCBDUkNfUlhfRU4gfCBFQ0NfUlhfRU4gfCBCVEFfRU4pOwo+ICsgICAgICAgcmVnbWFwX3dy
aXRlKGRzaS0+cmVncywgRFNJX1BDS0hETF9DRkcsIENSQ19SWF9FTiB8IEVDQ19SWF9FTiB8IEJU
QV9FTik7Cj4gIH0KPgo+ICBzdGF0aWMgdm9pZCBkd19taXBpX2RzaV92aWRlb19wYWNrZXRfY29u
ZmlnKHN0cnVjdCBkd19taXBpX2RzaSAqZHNpLAo+IEBAIC02MzgsNyArNjQwLDcgQEAgc3RhdGlj
IHZvaWQgZHdfbWlwaV9kc2lfdmlkZW9fcGFja2V0X2NvbmZpZyhzdHJ1Y3QgZHdfbWlwaV9kc2kg
KmRzaSwKPiAgICAgICAgICAqIG5vbi1idXJzdCB2aWRlbyBtb2Rlcywgc2VlIGR3X21pcGlfZHNp
X3ZpZGVvX21vZGVfY29uZmlnKCkuLi4KPiAgICAgICAgICAqLwo+Cj4gLSAgICAgICBkc2lfd3Jp
dGUoZHNpLCBEU0lfVklEX1BLVF9TSVpFLAo+ICsgICAgICAgcmVnbWFwX3dyaXRlKGRzaS0+cmVn
cywgRFNJX1ZJRF9QS1RfU0laRSwKPiAgICAgICAgICAgICAgICAgICAgICAgIGR3X21pcGlfaXNf
ZHVhbF9tb2RlKGRzaSkgPwo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgVklEX1BL
VF9TSVpFKG1vZGUtPmhkaXNwbGF5IC8gMikgOgo+ICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgVklEX1BLVF9TSVpFKG1vZGUtPmhkaXNwbGF5KSk7Cj4gQEAgLTY1MSwxNCArNjUzLDE1
IEBAIHN0YXRpYyB2b2lkIGR3X21pcGlfZHNpX2NvbW1hbmRfbW9kZV9jb25maWcoc3RydWN0IGR3
X21pcGlfZHNpICpkc2kpCj4gICAgICAgICAgKiBjb21wdXRlIGhpZ2ggc3BlZWQgdHJhbnNtaXNz
aW9uIGNvdW50ZXIgdGltZW91dCBhY2NvcmRpbmcKPiAgICAgICAgICAqIHRvIHRoZSB0aW1lb3V0
IGNsb2NrIGRpdmlzaW9uIChUT19DTEtfRElWSVNJT04pIGFuZCBieXRlIGxhbmUuLi4KPiAgICAg
ICAgICAqLwo+IC0gICAgICAgZHNpX3dyaXRlKGRzaSwgRFNJX1RPX0NOVF9DRkcsIEhTVFhfVE9f
Q05UKDEwMDApIHwgTFBSWF9UT19DTlQoMTAwMCkpOwo+ICsgICAgICAgcmVnbWFwX3dyaXRlKGRz
aS0+cmVncywgRFNJX1RPX0NOVF9DRkcsCj4gKyAgICAgICAgICAgICAgICAgICAgSFNUWF9UT19D
TlQoMTAwMCkgfCBMUFJYX1RPX0NOVCgxMDAwKSk7Cj4gICAgICAgICAvKgo+ICAgICAgICAgICog
VE9ETyBkdyBkcnYgaW1wcm92ZW1lbnRzCj4gICAgICAgICAgKiB0aGUgQnVzLVR1cm4tQXJvdW5k
IFRpbWVvdXQgQ291bnRlciBzaG91bGQgYmUgY29tcHV0ZWQKPiAgICAgICAgICAqIGFjY29yZGlu
ZyB0byBieXRlIGxhbmUuLi4KPiAgICAgICAgICAqLwo+IC0gICAgICAgZHNpX3dyaXRlKGRzaSwg
RFNJX0JUQV9UT19DTlQsIDB4ZDAwKTsKPiAtICAgICAgIGRzaV93cml0ZShkc2ksIERTSV9NT0RF
X0NGRywgRU5BQkxFX0NNRF9NT0RFKTsKPiArICAgICAgIHJlZ21hcF93cml0ZShkc2ktPnJlZ3Ms
IERTSV9CVEFfVE9fQ05ULCAweGQwMCk7Cj4gKyAgICAgICByZWdtYXBfd3JpdGUoZHNpLT5yZWdz
LCBEU0lfTU9ERV9DRkcsIEVOQUJMRV9DTURfTU9ERSk7Cj4gIH0KPgo+ICAvKiBHZXQgbGFuZSBi
eXRlIGNsb2NrIGN5Y2xlcy4gKi8KPiBAQCAtNjkyLDEzICs2OTUsMTMgQEAgc3RhdGljIHZvaWQg
ZHdfbWlwaV9kc2lfbGluZV90aW1lcl9jb25maWcoc3RydWN0IGR3X21pcGlfZHNpICpkc2ksCj4g
ICAgICAgICAgKiBjb21wdXRhdGlvbnMgYmVsb3cgbWF5IGJlIGltcHJvdmVkLi4uCj4gICAgICAg
ICAgKi8KPiAgICAgICAgIGxiY2MgPSBkd19taXBpX2RzaV9nZXRfaGNvbXBvbmVudF9sYmNjKGRz
aSwgbW9kZSwgaHRvdGFsKTsKPiAtICAgICAgIGRzaV93cml0ZShkc2ksIERTSV9WSURfSExJTkVf
VElNRSwgbGJjYyk7Cj4gKyAgICAgICByZWdtYXBfd3JpdGUoZHNpLT5yZWdzLCBEU0lfVklEX0hM
SU5FX1RJTUUsIGxiY2MpOwo+Cj4gICAgICAgICBsYmNjID0gZHdfbWlwaV9kc2lfZ2V0X2hjb21w
b25lbnRfbGJjYyhkc2ksIG1vZGUsIGhzYSk7Cj4gLSAgICAgICBkc2lfd3JpdGUoZHNpLCBEU0lf
VklEX0hTQV9USU1FLCBsYmNjKTsKPiArICAgICAgIHJlZ21hcF93cml0ZShkc2ktPnJlZ3MsIERT
SV9WSURfSFNBX1RJTUUsIGxiY2MpOwo+Cj4gICAgICAgICBsYmNjID0gZHdfbWlwaV9kc2lfZ2V0
X2hjb21wb25lbnRfbGJjYyhkc2ksIG1vZGUsIGhicCk7Cj4gLSAgICAgICBkc2lfd3JpdGUoZHNp
LCBEU0lfVklEX0hCUF9USU1FLCBsYmNjKTsKPiArICAgICAgIHJlZ21hcF93cml0ZShkc2ktPnJl
Z3MsIERTSV9WSURfSEJQX1RJTUUsIGxiY2MpOwo+ICB9Cj4KPiAgc3RhdGljIHZvaWQgZHdfbWlw
aV9kc2lfdmVydGljYWxfdGltaW5nX2NvbmZpZyhzdHJ1Y3QgZHdfbWlwaV9kc2kgKmRzaSwKPiBA
QCAtNzExLDEwICs3MTQsMTAgQEAgc3RhdGljIHZvaWQgZHdfbWlwaV9kc2lfdmVydGljYWxfdGlt
aW5nX2NvbmZpZyhzdHJ1Y3QgZHdfbWlwaV9kc2kgKmRzaSwKPiAgICAgICAgIHZmcCA9IG1vZGUt
PnZzeW5jX3N0YXJ0IC0gbW9kZS0+dmRpc3BsYXk7Cj4gICAgICAgICB2YnAgPSBtb2RlLT52dG90
YWwgLSBtb2RlLT52c3luY19lbmQ7Cj4KPiAtICAgICAgIGRzaV93cml0ZShkc2ksIERTSV9WSURf
VkFDVElWRV9MSU5FUywgdmFjdGl2ZSk7Cj4gLSAgICAgICBkc2lfd3JpdGUoZHNpLCBEU0lfVklE
X1ZTQV9MSU5FUywgdnNhKTsKPiAtICAgICAgIGRzaV93cml0ZShkc2ksIERTSV9WSURfVkZQX0xJ
TkVTLCB2ZnApOwo+IC0gICAgICAgZHNpX3dyaXRlKGRzaSwgRFNJX1ZJRF9WQlBfTElORVMsIHZi
cCk7Cj4gKyAgICAgICByZWdtYXBfd3JpdGUoZHNpLT5yZWdzLCBEU0lfVklEX1ZBQ1RJVkVfTElO
RVMsIHZhY3RpdmUpOwo+ICsgICAgICAgcmVnbWFwX3dyaXRlKGRzaS0+cmVncywgRFNJX1ZJRF9W
U0FfTElORVMsIHZzYSk7Cj4gKyAgICAgICByZWdtYXBfd3JpdGUoZHNpLT5yZWdzLCBEU0lfVklE
X1ZGUF9MSU5FUywgdmZwKTsKPiArICAgICAgIHJlZ21hcF93cml0ZShkc2ktPnJlZ3MsIERTSV9W
SURfVkJQX0xJTkVTLCB2YnApOwo+ICB9Cj4KPiAgc3RhdGljIHZvaWQgZHdfbWlwaV9kc2lfZHBo
eV90aW1pbmdfY29uZmlnKHN0cnVjdCBkd19taXBpX2RzaSAqZHNpKQo+IEBAIC03MzcsMjMgKzc0
MCwyNSBAQCBzdGF0aWMgdm9pZCBkd19taXBpX2RzaV9kcGh5X3RpbWluZ19jb25maWcoc3RydWN0
IGR3X21pcGlfZHNpICpkc2kpCj4gICAgICAgICAgKiBEU0lfQ01EX01PREVfQ0ZHLk1BWF9SRF9Q
S1RfU0laRV9MUCAoc2VlIENNRF9NT0RFX0FMTF9MUCkKPiAgICAgICAgICAqLwo+Cj4gLSAgICAg
ICBod192ZXJzaW9uID0gZHNpX3JlYWQoZHNpLCBEU0lfVkVSU0lPTikgJiBWRVJTSU9OOwo+ICsg
ICAgICAgcmVnbWFwX3JlYWQoZHNpLT5yZWdzLCBEU0lfVkVSU0lPTiwgJmh3X3ZlcnNpb24pOwo+
ICsgICAgICAgaHdfdmVyc2lvbiAmPSBWRVJTSU9OOwoKSWYgSSBhbSBub3Qgd3JvbmcsIHlvdSBh
bHJlYWR5IGludHJvZHVjZWQgYSBmdW5jdGlvbiB0byBnZXQgdGhlCmhhcmR3YXJlIHZlcnNpb24g
YW5kIGlzIHN0b3JlZCBpbiBkc2ktPmh3X3ZlcnNpb24uIE1heWJlIHlvdSBjb3VsZCB5b3UKdXNl
IHRoYXQgdmFyaWFibGUgYW5kIHJlbW92ZSB0aGF0IGNvZGUuCgo+Cj4gICAgICAgICBpZiAoaHdf
dmVyc2lvbiA+PSBIV1ZFUl8xMzEpIHsKPiAtICAgICAgICAgICAgICAgZHNpX3dyaXRlKGRzaSwg
RFNJX1BIWV9UTVJfQ0ZHLAo+IC0gICAgICAgICAgICAgICAgICAgICAgICAgUEhZX0hTMkxQX1RJ
TUVfVjEzMSh0aW1pbmcuZGF0YV9oczJscCkgfAo+IC0gICAgICAgICAgICAgICAgICAgICAgICAg
UEhZX0xQMkhTX1RJTUVfVjEzMSh0aW1pbmcuZGF0YV9scDJocykpOwo+IC0gICAgICAgICAgICAg
ICBkc2lfd3JpdGUoZHNpLCBEU0lfUEhZX1RNUl9SRF9DRkcsIE1BWF9SRF9USU1FX1YxMzEoMTAw
MDApKTsKPiArICAgICAgICAgICAgICAgcmVnbWFwX3dyaXRlKGRzaS0+cmVncywgRFNJX1BIWV9U
TVJfQ0ZHLAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgUEhZX0hTMkxQX1RJTUVfVjEz
MSh0aW1pbmcuZGF0YV9oczJscCkgfAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgUEhZ
X0xQMkhTX1RJTUVfVjEzMSh0aW1pbmcuZGF0YV9scDJocykpOwo+ICsgICAgICAgICAgICAgICBy
ZWdtYXBfd3JpdGUoZHNpLT5yZWdzLCBEU0lfUEhZX1RNUl9SRF9DRkcsCj4gKyAgICAgICAgICAg
ICAgICAgICAgICAgICAgICBNQVhfUkRfVElNRV9WMTMxKDEwMDAwKSk7Cj4gICAgICAgICB9IGVs
c2Ugewo+IC0gICAgICAgICAgICAgICBkc2lfd3JpdGUoZHNpLCBEU0lfUEhZX1RNUl9DRkcsCj4g
LSAgICAgICAgICAgICAgICAgICAgICAgICBQSFlfSFMyTFBfVElNRSh0aW1pbmcuZGF0YV9oczJs
cCkgfAo+IC0gICAgICAgICAgICAgICAgICAgICAgICAgUEhZX0xQMkhTX1RJTUUodGltaW5nLmRh
dGFfbHAyaHMpIHwKPiAtICAgICAgICAgICAgICAgICAgICAgICAgIE1BWF9SRF9USU1FKDEwMDAw
KSk7Cj4gKyAgICAgICAgICAgICAgIHJlZ21hcF93cml0ZShkc2ktPnJlZ3MsIERTSV9QSFlfVE1S
X0NGRywKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgIFBIWV9IUzJMUF9USU1FKHRpbWlu
Zy5kYXRhX2hzMmxwKSB8Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICBQSFlfTFAySFNf
VElNRSh0aW1pbmcuZGF0YV9scDJocykgfAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAg
TUFYX1JEX1RJTUUoMTAwMDApKTsKPiAgICAgICAgIH0KPgo+IC0gICAgICAgZHNpX3dyaXRlKGRz
aSwgRFNJX1BIWV9UTVJfTFBDTEtfQ0ZHLAo+IC0gICAgICAgICAgICAgICAgIFBIWV9DTEtIUzJM
UF9USU1FKHRpbWluZy5jbGtfaHMybHApIHwKPiAtICAgICAgICAgICAgICAgICBQSFlfQ0xLTFAy
SFNfVElNRSh0aW1pbmcuY2xrX2xwMmhzKSk7Cj4gKyAgICAgICByZWdtYXBfd3JpdGUoZHNpLT5y
ZWdzLCBEU0lfUEhZX1RNUl9MUENMS19DRkcsCj4gKyAgICAgICAgICAgICAgICAgICAgUEhZX0NM
S0hTMkxQX1RJTUUodGltaW5nLmNsa19oczJscCkgfAo+ICsgICAgICAgICAgICAgICAgICAgIFBI
WV9DTEtMUDJIU19USU1FKHRpbWluZy5jbGtfbHAyaHMpKTsKPiAgfQo+Cj4gIHN0YXRpYyB2b2lk
IGR3X21pcGlfZHNpX2RwaHlfaW50ZXJmYWNlX2NvbmZpZyhzdHJ1Y3QgZHdfbWlwaV9kc2kgKmRz
aSkKPiBAQCAtNzYzLDQ2ICs3NjgsNDkgQEAgc3RhdGljIHZvaWQgZHdfbWlwaV9kc2lfZHBoeV9p
bnRlcmZhY2VfY29uZmlnKHN0cnVjdCBkd19taXBpX2RzaSAqZHNpKQo+ICAgICAgICAgICogc3Rv
cCB3YWl0IHRpbWUgc2hvdWxkIGJlIHRoZSBtYXhpbXVtIGJldHdlZW4gaG9zdCBkc2kKPiAgICAg
ICAgICAqIGFuZCBwYW5lbCBzdG9wIHdhaXQgdGltZXMKPiAgICAgICAgICAqLwo+IC0gICAgICAg
ZHNpX3dyaXRlKGRzaSwgRFNJX1BIWV9JRl9DRkcsIFBIWV9TVE9QX1dBSVRfVElNRSgweDIwKSB8
Cj4gLSAgICAgICAgICAgICAgICAgTl9MQU5FUyhkc2ktPmxhbmVzKSk7Cj4gKyAgICAgICByZWdt
YXBfd3JpdGUoZHNpLT5yZWdzLCBEU0lfUEhZX0lGX0NGRywKPiArICAgICAgICAgICAgICAgICAg
ICBQSFlfU1RPUF9XQUlUX1RJTUUoMHgyMCkgfCBOX0xBTkVTKGRzaS0+bGFuZXMpKTsKPiAgfQo+
Cj4gIHN0YXRpYyB2b2lkIGR3X21pcGlfZHNpX2RwaHlfaW5pdChzdHJ1Y3QgZHdfbWlwaV9kc2kg
KmRzaSkKPiAgewo+ICAgICAgICAgLyogQ2xlYXIgUEhZIHN0YXRlICovCj4gLSAgICAgICBkc2lf
d3JpdGUoZHNpLCBEU0lfUEhZX1JTVFosIFBIWV9ESVNGT1JDRVBMTCB8IFBIWV9ESVNBQkxFQ0xL
Cj4gLSAgICAgICAgICAgICAgICAgfCBQSFlfUlNUWiB8IFBIWV9TSFVURE9XTlopOwo+IC0gICAg
ICAgZHNpX3dyaXRlKGRzaSwgRFNJX1BIWV9UU1RfQ1RSTDAsIFBIWV9VTlRFU1RDTFIpOwo+IC0g
ICAgICAgZHNpX3dyaXRlKGRzaSwgRFNJX1BIWV9UU1RfQ1RSTDAsIFBIWV9URVNUQ0xSKTsKPiAt
ICAgICAgIGRzaV93cml0ZShkc2ksIERTSV9QSFlfVFNUX0NUUkwwLCBQSFlfVU5URVNUQ0xSKTsK
PiArICAgICAgIHJlZ21hcF93cml0ZShkc2ktPnJlZ3MsIERTSV9QSFlfUlNUWiwgUEhZX0RJU0ZP
UkNFUExMIHwgUEhZX0RJU0FCTEVDTEsKPiArICAgICAgICAgICAgICAgICAgICB8IFBIWV9SU1Ra
IHwgUEhZX1NIVVRET1dOWik7Cj4gKyAgICAgICByZWdtYXBfd3JpdGUoZHNpLT5yZWdzLCBEU0lf
UEhZX1RTVF9DVFJMMCwgUEhZX1VOVEVTVENMUik7Cj4gKyAgICAgICByZWdtYXBfd3JpdGUoZHNp
LT5yZWdzLCBEU0lfUEhZX1RTVF9DVFJMMCwgUEhZX1RFU1RDTFIpOwo+ICsgICAgICAgcmVnbWFw
X3dyaXRlKGRzaS0+cmVncywgRFNJX1BIWV9UU1RfQ1RSTDAsIFBIWV9VTlRFU1RDTFIpOwo+ICB9
Cj4KPiAgc3RhdGljIHZvaWQgZHdfbWlwaV9kc2lfZHBoeV9lbmFibGUoc3RydWN0IGR3X21pcGlf
ZHNpICpkc2kpCj4gIHsKPiAtICAgICAgIHUzMiB2YWw7Cj4gKyAgICAgICB1MzIgdmFsID0gMDsK
CmRpdHRvCgo+ICAgICAgICAgaW50IHJldDsKPgo+IC0gICAgICAgZHNpX3dyaXRlKGRzaSwgRFNJ
X1BIWV9SU1RaLCBQSFlfRU5GT1JDRVBMTCB8IFBIWV9FTkFCTEVDTEsgfAo+IC0gICAgICAgICAg
ICAgICAgIFBIWV9VTlJTVFogfCBQSFlfVU5TSFVURE9XTlopOwo+ICsgICAgICAgcmVnbWFwX3dy
aXRlKGRzaS0+cmVncywgRFNJX1BIWV9SU1RaLCBQSFlfRU5GT1JDRVBMTCB8IFBIWV9FTkFCTEVD
TEsgfAo+ICsgICAgICAgICAgICAgICAgICAgIFBIWV9VTlJTVFogfCBQSFlfVU5TSFVURE9XTlop
Owo+Cj4gLSAgICAgICByZXQgPSByZWFkbF9wb2xsX3RpbWVvdXQoZHNpLT5iYXNlICsgRFNJX1BI
WV9TVEFUVVMsIHZhbCwKPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB2YWwgJiBQ
SFlfTE9DSywgMTAwMCwgUEhZX1NUQVRVU19USU1FT1VUX1VTKTsKPiArICAgICAgIHJldCA9IHJl
Z21hcF9yZWFkX3BvbGxfdGltZW91dChkc2ktPnJlZ3MsIERTSV9QSFlfU1RBVFVTLAo+ICsgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHZhbCwgdmFsICYgUEhZX0xPQ0ssCj4g
KyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgMTAwMCwgUEhZX1NUQVRVU19U
SU1FT1VUX1VTKTsKPiAgICAgICAgIGlmIChyZXQpCj4gICAgICAgICAgICAgICAgIERSTV9ERUJV
R19EUklWRVIoImZhaWxlZCB0byB3YWl0IHBoeSBsb2NrIHN0YXRlXG4iKTsKPgo+IC0gICAgICAg
cmV0ID0gcmVhZGxfcG9sbF90aW1lb3V0KGRzaS0+YmFzZSArIERTSV9QSFlfU1RBVFVTLAo+IC0g
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHZhbCwgdmFsICYgUEhZX1NUT1BfU1RBVEVf
Q0xLX0xBTkUsIDEwMDAsCj4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgUEhZX1NU
QVRVU19USU1FT1VUX1VTKTsKPiArICAgICAgIHJldCA9IHJlZ21hcF9yZWFkX3BvbGxfdGltZW91
dChkc2ktPnJlZ3MsIERTSV9QSFlfU1RBVFVTLAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIHZhbCwgdmFsICYgUEhZX1NUT1BfU1RBVEVfQ0xLX0xBTkUsIDEwMDAsCj4g
KyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgUEhZX1NUQVRVU19USU1FT1VU
X1VTKTsKPiAgICAgICAgIGlmIChyZXQpCj4gICAgICAgICAgICAgICAgIERSTV9ERUJVR19EUklW
RVIoImZhaWxlZCB0byB3YWl0IHBoeSBjbGsgbGFuZSBzdG9wIHN0YXRlXG4iKTsKPiAgfQo+Cj4g
IHN0YXRpYyB2b2lkIGR3X21pcGlfZHNpX2NsZWFyX2VycihzdHJ1Y3QgZHdfbWlwaV9kc2kgKmRz
aSkKPiAgewo+IC0gICAgICAgZHNpX3JlYWQoZHNpLCBEU0lfSU5UX1NUMCk7Cj4gLSAgICAgICBk
c2lfcmVhZChkc2ksIERTSV9JTlRfU1QxKTsKPiAtICAgICAgIGRzaV93cml0ZShkc2ksIERTSV9J
TlRfTVNLMCwgMCk7Cj4gLSAgICAgICBkc2lfd3JpdGUoZHNpLCBEU0lfSU5UX01TSzEsIDApOwo+
ICsgICAgICAgdTMyIHZhbDsKPiArCj4gKyAgICAgICByZWdtYXBfcmVhZChkc2ktPnJlZ3MsIERT
SV9JTlRfU1QwLCAmdmFsKTsKPiArICAgICAgIHJlZ21hcF9yZWFkKGRzaS0+cmVncywgRFNJX0lO
VF9TVDEsICZ2YWwpOwo+ICsgICAgICAgcmVnbWFwX3dyaXRlKGRzaS0+cmVncywgRFNJX0lOVF9N
U0swLCAwKTsKPiArICAgICAgIHJlZ21hcF93cml0ZShkc2ktPnJlZ3MsIERTSV9JTlRfTVNLMSwg
MCk7Cj4gIH0KPgo+ICBzdGF0aWMgdm9pZCBkd19taXBpX2RzaV9icmlkZ2VfcG9zdF9kaXNhYmxl
KHN0cnVjdCBkcm1fYnJpZGdlICpicmlkZ2UpCj4gQEAgLTk4OSw2ICs5OTcsMTQgQEAgc3RhdGlj
IHZvaWQgZHdfbWlwaV9kc2lfZGVidWdmc19yZW1vdmUoc3RydWN0IGR3X21pcGlfZHNpICpkc2kp
IHsgfQo+Cj4gICNlbmRpZiAvKiBDT05GSUdfREVCVUdfRlMgKi8KPgo+ICtzdGF0aWMgdm9pZCBk
d19taXBpX2RzaV9nZXRfaHdfdmVyc2lvbihzdHJ1Y3QgZHdfbWlwaV9kc2kgKmRzaSkKPiArewo+
ICsgICAgICAgcmVnbWFwX3JlYWQoZHNpLT5yZWdzLCBEU0lfVkVSU0lPTiwgJmRzaS0+aHdfdmVy
c2lvbik7Cj4gKyAgICAgICBkc2ktPmh3X3ZlcnNpb24gJj0gVkVSU0lPTjsKPiArICAgICAgIGlm
ICghZHNpLT5od192ZXJzaW9uKQo+ICsgICAgICAgICAgICAgICBkZXZfZXJyKGRzaS0+ZGV2LCAi
RmFpbGVkIHRvIHJlYWQgRFNJIGh3IHZlcnNpb24gcmVnaXN0ZXJcbiIpOwoKSXMgdGhpcyBhbiBl
cnJvciB0aGF0IHNob3VsZCBiZSBpZ25vcmVkPyBJZiB5b3UgY2FuJ3QgZ2V0IHRoZSBIVwp2ZXJz
aW9uLCBwcm9iYWJseSwgdGhlcmUgaXMgc29tZXRoaW5nIHdyb25nIHdpdGggeW91ciBoYXJkd2Fy
ZSBzbywKZG9uJ3QgeW91IG5lZWQgdG8gcmV0dXJuIGFuIGVycm9yPwoKCj4gK30KPiArCj4gIHN0
YXRpYyBzdHJ1Y3QgZHdfbWlwaV9kc2kgKgo+ICBfX2R3X21pcGlfZHNpX3Byb2JlKHN0cnVjdCBw
bGF0Zm9ybV9kZXZpY2UgKnBkZXYsCj4gICAgICAgICAgICAgICAgICAgICBjb25zdCBzdHJ1Y3Qg
ZHdfbWlwaV9kc2lfcGxhdF9kYXRhICpwbGF0X2RhdGEpCj4gQEAgLTEwMjAsNiArMTAzNiwxNCBA
QCBfX2R3X21pcGlfZHNpX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYsCj4gICAg
ICAgICAgICAgICAgIGRzaS0+YmFzZSA9IHBsYXRfZGF0YS0+YmFzZTsKPiAgICAgICAgIH0KPgo+
ICsgICAgICAgZHNpLT5yZWdzID0gZGV2bV9yZWdtYXBfaW5pdF9tbWlvKGRldiwgZHNpLT5iYXNl
LAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICZkd19taXBpX2Rz
aV9yZWdtYXBfY2ZnKTsKPiArICAgICAgIGlmIChJU19FUlIoZHNpLT5yZWdzKSkgewo+ICsgICAg
ICAgICAgICAgICByZXQgPSBQVFJfRVJSKGRzaS0+cmVncyk7Cj4gKyAgICAgICAgICAgICAgIERS
TV9FUlJPUigiRmFpbGVkIHRvIGNyZWF0ZSBEVyBNSVBJIERTSSByZWdtYXA6ICVkXG4iLCByZXQp
Owo+ICsgICAgICAgICAgICAgICByZXR1cm4gRVJSX1BUUihyZXQpOwo+ICsgICAgICAgfQo+ICsK
PiAgICAgICAgIGRzaS0+cGNsayA9IGRldm1fY2xrX2dldChkZXYsICJwY2xrIik7Cj4gICAgICAg
ICBpZiAoSVNfRVJSKGRzaS0+cGNsaykpIHsKPiAgICAgICAgICAgICAgICAgcmV0ID0gUFRSX0VS
Uihkc2ktPnBjbGspOwo+IEBAIC0xMDU1LDYgKzEwNzksOCBAQCBfX2R3X21pcGlfZHNpX3Byb2Jl
KHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYsCj4gICAgICAgICAgICAgICAgIGNsa19kaXNh
YmxlX3VucHJlcGFyZShkc2ktPnBjbGspOwo+ICAgICAgICAgfQo+Cj4gKyAgICAgICBkd19taXBp
X2RzaV9nZXRfaHdfdmVyc2lvbihkc2kpOwo+ICsKPiAgICAgICAgIGR3X21pcGlfZHNpX2RlYnVn
ZnNfaW5pdChkc2kpOwo+ICAgICAgICAgcG1fcnVudGltZV9lbmFibGUoZGV2KTsKPgo+IC0tCj4g
Mi4yNi4wCj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Xwo+IGRyaS1kZXZlbCBtYWlsaW5nIGxpc3QKPiBkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcmkt
ZGV2ZWwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK
