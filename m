Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EE9410251B
	for <lists+linux-rockchip@lfdr.de>; Tue, 19 Nov 2019 14:04:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cg/7gBxjVGXtXrU9fQA+frBD8N3xneYro7aELgElSA4=; b=lwj01N68hXgoif
	IJikIxrDFO+jBwdqCtq1WAfdleK8824AzfyxxuBsBdMK0Rmy2r4gktTN2Pb6D9W9yfdUs7O/a/DVL
	d3UZe73/YmfbDO6CTuxFCeokGrNWSae4IdP/wAstAbYHL0t44xyuP4lr5Kp1Yqhdbr4lx0L1yCFMA
	FHafKdJgVctSN6+udbdgniRGqDmEAEDqxjA+IkqIrkLAYGlI5TuXkvjngmZUwj0iRhfU1MNOHix2P
	q7sf4HbOt3JuBVBlnLmNPrUgr1zPWwpG5QwlQSVgT4yF5IcEHRh3pxDxf8Tbq9jZE+yF1+4h275vq
	HY744/VPH+bt+yOhNzqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX3B3-0004KW-Ry; Tue, 19 Nov 2019 13:04:17 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX3B0-0004K1-Ox
 for linux-rockchip@lists.infradead.org; Tue, 19 Nov 2019 13:04:16 +0000
Received: by mail-ed1-x543.google.com with SMTP id b72so16987770edf.1
 for <linux-rockchip@lists.infradead.org>; Tue, 19 Nov 2019 05:04:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=VEavlwL1+rDzs+L+hM6nx0dnrMPSn2yWoKd3exKBnKI=;
 b=b6eiXfq4vDKE47zZ4PvxoN61Q1BY37X7wcxDr/SiVmRRP0VtNsmCMMkrX3qi2LrRtu
 P92lSpOaIxSROrtWuDJJ0XrRgaTiZBAJJ6z6l46VSE06O0MjhbBzsnYdD72zjhau3pF3
 WCNJR5qHibROyv1OB4bctwVa86YYWorAOoycA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=VEavlwL1+rDzs+L+hM6nx0dnrMPSn2yWoKd3exKBnKI=;
 b=Dpug+FHq/6F9x348kqf4P/WOxe3YevAHHvgzWP4lmha2RV1Krj9UPn07hF+NZ2oAT4
 1kqz8I0+Hp82SIknVZcbvQ+fVkRB5MIiwYK5hoD0aonjW9vPGLkVoO6H0mXv0wO6xkKJ
 ngy7JS9fCQcM//Ol3ev74nTK8WRAD9IqoD21QGefThY84g4hmwfEqel6h5QPybPsw3vB
 43q8nx735+SJ5AHhIS3yqrcTdbaEOIBjrD4YVViDnmY+kXJHOOPK0xCqt6vn9OO5YZLW
 9erKhjQbBMr26PTX2w+N1r1iynRiBJR0wIVpjeWncVnwxYarTDF1WXIR5nhc6JU7kmK5
 7R1Q==
X-Gm-Message-State: APjAAAXa4hqz5i6afUeAGZ/lhEtJ1PL/K5aQp0lIZgQ29t0dxtXHFGEp
 1o7Po3oz/ru/Lz9O/0W2zE+E4IJ7NuMtOQ==
X-Google-Smtp-Source: APXvYqyJT8eyrpf9u6Zm1E0jOZEmEQ8TqQnER+9Zo37L7at9x/eMkU3kjPDXePq0ic9kImhxYH0+hg==
X-Received: by 2002:a17:906:d72:: with SMTP id
 s18mr35684936ejh.29.1574168652142; 
 Tue, 19 Nov 2019 05:04:12 -0800 (PST)
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com.
 [209.85.221.42])
 by smtp.gmail.com with ESMTPSA id c22sm74245eja.44.2019.11.19.05.04.10
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 19 Nov 2019 05:04:11 -0800 (PST)
Received: by mail-wr1-f42.google.com with SMTP id a15so23732837wrf.9
 for <linux-rockchip@lists.infradead.org>; Tue, 19 Nov 2019 05:04:10 -0800 (PST)
X-Received: by 2002:adf:e505:: with SMTP id j5mr33584239wrm.46.1574168650324; 
 Tue, 19 Nov 2019 05:04:10 -0800 (PST)
MIME-Version: 1.0
References: <20191114051242.14651-1-helen.koike@collabora.com>
 <20191114051242.14651-3-helen.koike@collabora.com>
 <09d4f683-d03d-46c9-e9d2-b8cceb72446e@xs4all.nl>
 <9cb116f6-64f4-1510-b128-8657d6d4889b@collabora.com>
 <CAFLEztRQfYE_Mssiq4KxK-QyJEe+KT4eTsvnLZQK5T=uVADUqA@mail.gmail.com>
 <4135d35cd581b31d08b547852ac43e959957abf5.camel@collabora.com>
In-Reply-To: <4135d35cd581b31d08b547852ac43e959957abf5.camel@collabora.com>
From: Tomasz Figa <tfiga@chromium.org>
Date: Tue, 19 Nov 2019 22:03:59 +0900
X-Gmail-Original-Message-ID: <CAAFQd5BPwSnY51vJboCB6Hr2Yz4jMqt4VWLNNLTpiwenGo_Wew@mail.gmail.com>
Message-ID: <CAAFQd5BPwSnY51vJboCB6Hr2Yz4jMqt4VWLNNLTpiwenGo_Wew@mail.gmail.com>
Subject: Re: [PATCH v11 02/11] media: staging: rkisp1: add document for rkisp1
 meta buffer format
To: Ezequiel Garcia <ezequiel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_050414_838087_4CD97B65 
X-CRM114-Status: GOOD (  20.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, Eddie Cai <eddie.cai.linux@gmail.com>,
 Heiko Stuebner <heiko@sntech.de>, Hans Verkuil <hverkuil@xs4all.nl>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>, kernel@collabora.com,
 =?UTF-8?B?6ZKf5Lul5bSH?= <zyc@rock-chips.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Hans Verkuil <hans.verkuil@cisco.com>, Shunqian Zheng <zhengsq@rock-chips.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>,
 linux-devicetree <devicetree@vger.kernel.org>,
 Jeffy Chen <jeffy.chen@rock-chips.com>,
 Helen Koike <helen.koike@collabora.com>, Rob Herring <robh+dt@kernel.org>,
 Jacob Chen <jacob-chen@rock-chips.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Jacob Chen <jacobchen110@gmail.com>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <linux-arm-kernel@lists.infradead.org>,
 Greg KH <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

T24gVHVlLCBOb3YgMTksIDIwMTkgYXQgOTo1NiBQTSBFemVxdWllbCBHYXJjaWEgPGV6ZXF1aWVs
QGNvbGxhYm9yYS5jb20+IHdyb3RlOgo+Cj4gSGVsbG8gSmFjb2IsCj4KPiBUaGFua3MgZm9yIHRo
ZSBpbnNpZ2h0Lgo+Cj4gT24gVHVlLCAyMDE5LTExLTE5IGF0IDE4OjE2ICswODAwLCBKYWNvYiBD
aGVuIHdyb3RlOgo+ID4gSGkgSGVsZW4gLAo+ID4KPiA+IEhlbGVuIEtvaWtlIDxoZWxlbi5rb2lr
ZUBjb2xsYWJvcmEuY29tPiDkuo4yMDE55bm0MTHmnIgxNOaXpeWRqOWbmyDkuIvljYg2OjU55YaZ
6YGT77yaCj4gPiA+Cj4gPiA+Cj4gPiA+IE9uIDExLzE0LzE5IDY6MjEgQU0sIEhhbnMgVmVya3Vp
bCB3cm90ZToKPiA+ID4gPiBPbiAxMS8xNC8xOSA2OjEyIEFNLCBIZWxlbiBLb2lrZSB3cm90ZToK
PiA+ID4gPiA+IEZyb206IEphY29iIENoZW4gPGphY29iMi5jaGVuQHJvY2stY2hpcHMuY29tPgo+
ID4gPiA+ID4KPiA+ID4gPiA+IFRoaXMgY29tbWl0IGFkZCBkb2N1bWVudCBmb3Igcmtpc3AxIG1l
dGEgYnVmZmVyIGZvcm1hdAo+ID4gPiA+ID4KPiA+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IEphY29i
IENoZW4gPGphY29iLWNoZW5Acm9jay1jaGlwcy5jb20+Cj4gPiA+ID4gPiBbcmVmYWN0b3JlZCBm
b3IgdXBzdHJlYW1dCj4gPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBIZWxlbiBLb2lrZSA8aGVsZW4u
a29pa2VAY29sbGFib3JhLmNvbT4KPiA+ID4gPgo+ID4gPiA+IGNoZWNrcGF0Y2ggZ2l2ZXMgbWU6
Cj4gPiA+ID4KPiA+ID4gPiBXQVJOSU5HOiBNaXNzaW5nIFNpZ25lZC1vZmYtYnk6IGxpbmUgYnkg
bm9taW5hbCBwYXRjaCBhdXRob3IgJ0phY29iIENoZW4gPGphY29iMi5jaGVuQHJvY2stY2hpcHMu
Y29tPicKPiA+ID4gPgo+ID4gPiA+IExvb2tpbmcgYXQgdGhpcyBzZXJpZXMgSSBzZWUgZHVwbGlj
YXRlIFNpZ25lZC1vZmYtYnkgZW50cmllcyBmb3IgSmFjb2IgQ2hlbiBhbmQgYSB0b3RhbAo+ID4g
PiA+IG9mIHRocmVlIGRpZmZlcmVudCBlbWFpbCBhZGRyZXNzZXM6Cj4gPiA+ID4KPiA+ID4gPiBq
YWNvYjIuY2hlbkByb2NrLWNoaXBzLmNvbQo+ID4gPiA+IGphY29iLWNoZW5Acm9jay1jaGlwcy5j
b20KPiA+ID4gPiBjY0Byb2NrLWNoaXBzLmNvbQo+ID4gPgo+ID4gPiBBbmQgSSBzZWUgYSBuYW1l
IGluIHRoZSBNYWludGFpbmVycyBmaWxlIGFzIEphY29iIENoZW4gPGphY29iLWNoZW5AaW90d3J0
LmNvbT4uCj4gPiA+IEkgd2FzIHdvbmRlcmluZyBpZiBJIGNvdWxkIHJlcGxhY2UgdGhlIGVtYWls
IGJ5IGphY29iLWNoZW5AaW90d3J0LmNvbSwgb3IgaWYgSSBzaG91bGQKPiA+ID4ga2VlcCB0aGUg
b3JpZ2luYWwgb25lcy4KPiA+ID4KPiA+ID4gSGVsZW4KPiA+ID4KPiA+Cj4gPiAiamFjb2IyLmNo
ZW5Acm9jay1jaGlwcy5jb20iLyJqYWNvYi1jaGVuQHJvY2stY2hpcHMuY29tIiBpcyBtZSBhbmQK
PiA+ICJjY0Byb2NrLWNoaXBzLmNvbSIgaXMgYW5vdGhlciBvbmUuCj4gPiAnIGphY29iLWNoZW5A
cm9jay1jaGlwcy5jb20nIGlzIGludmFsaWQgbm93LCAgc28geW91IGNvdWxkIHJlcGxhY2UgdGhl
Cj4gPiBlbWFpbCBieSAnamFjb2ItY2hlbkBpb3R3cnQuY29tJy4KPiA+Cj4KPiBBdXRob3JzaGlw
IGFuZCBTT0IgY2FuJ3QgYmUgY2hhbmdlZCBmcmVlbHksIHRoZSBvcmlnaW5hbCBtdXN0IGJlIHJl
dGFpbmVkLAo+IGJlY2F1c2UgdGhpcyBnaXZlcyBwcm9wZXIgY3JlZGl0IHRvIHRoZSBjb21wYW55
IHRoYXQgc3BvbnNvcmVkIHRoZSB3b3JrLgo+Cj4gSS5lLiBpZiB5b3VyIG1haWwgdXNlZCB0byBi
ZSBqYWNvYjIuY2hlbiBhdCByb2NrLWNoaXBzLmNvbSwgdGhlbiBJIHRoaW5rCj4gd2UgY2FuIHVz
ZSB0aGF0LiBBbmQgaWYgY2MgYXQgcm9jay1jaGlwcy5jb20gaXMgYSBkaWZmZXJlbnQgZW5naW5l
ZXIsCj4gYWxzbyBuYW1lZCBKYWNvYiBDaGVuLCBwZXJoYXBzIHdlIGNhbiBtZW50aW9uIHRoYXQg
c29tZXdoZXJlIHRvIHJlZHVjZSB0aGUKPiBjb25mdXNpb24uCgpTb21lIHBhdGNoZXMgaGF2ZSBi
ZWVuIGRldmVsb3BlZCBieSBKYWNvYiA8amFjb2IyLmNoZW4gYXQKcm9jay1jaGlwcy5jb20+LCBz
b21lIGJ5IEphY29iIDxjYyBhdCByb2NrLWNoaXBzLmNvbT4gYW5kIHNvbWUgYnkKYm90aC4KClNv
bWUgcGF0Y2hlcyBoYXZlIGJlZW4gYWxzbyByZS1wb3N0ZWQgYnkgSmFjb2IgYWZ0ZXIgbGVhdmlu
ZyBSb2NrY2hpcApBRkFJUiwgZnJvbSB0aGUgPGphY29iLWNoZW4gYXQgaW90d3J0LmNvbT4gYWRk
cmVzcy4gVGhvc2Ugc2hvdWxkIGhhdmUKPGphY29iMi5jaGVuIGF0IHJvY2stY2hpcHMuY29tPiBh
cyBGcm9tOiBhbmQgaW5jbHVkZSBzaWduLW9mZnMgZnJvbQpib3RoIDxqYWNvYjIuY2hlbiBhdCBy
b2NrLWNoaXBzLmNvbT4gYW5kIDxqYWNvYi1jaGVuIGF0IGlvdHdydC5jb20+LgoKU28gdGhlIGNv
bmNsdXNpb24gaXMgdGhhdCB0aGUgb3JpZ2luYWwgc2lnbi1vZmZzIHNob3VsZCBiZSByZXRhaW5l
ZAorLy0gdHlwb3MgZml4ZWQuCgpGb3IgdHlwb3MsIHdhcyA8amFjb2ItY2hlbiBhdCByb2NrLWNo
aXBzLmNvbT4gYSB0eXBvIG9mIDxqYWNvYjIuY2hlbgphdCByb2NrLWNoaXBzLmNvbT4gb3IgYSB0
eXBvIG9mIDxqYWNvYi1jaGVuIGF0IGlvdHdydC5jb20+PwoKQmVzdCByZWdhcmRzLApUb21hc3oK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJv
Y2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
