Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BE4B17AF1E
	for <lists+linux-rockchip@lfdr.de>; Thu,  5 Mar 2020 20:42:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8zK5y1Is0djbsmwvfIBQLRY9phkad+1kAusBMoFMYZk=; b=UXKkP1x04D+3Uj
	tlGCvFvMaxF3OfFpbRb2DSlH+TQtGxdZUhuPFtOkXMCb6kHPlDFdaVmOMotdOek4t8wu3/WdwQhMu
	YcX5c5eBUORV7fYTEpDTk5lhfZc+MEQbGTtmjJHCYemWCJWZSOO24qK1nMf7zqg/A2HiklpjOQJAh
	sISwuROplMiVSqj9oGdUUK+3r/jjpcJi7vYOZa9DzxXGkKhkAo/HNpr7pIaONo5p0KE+7/UV2sxXc
	Ck8r8/+SYECG6djxh7kBgr8nseltLXrdBW83qhuPfM2AjtlFfS2VEa37J5EhAjaW4sHvJrUO7sWaU
	teBnXThqwEduENt9gNAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9wON-0007hf-FJ; Thu, 05 Mar 2020 19:42:47 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9wOH-0007gn-IP
 for linux-rockchip@lists.infradead.org; Thu, 05 Mar 2020 19:42:45 +0000
Received: by mail-qt1-x842.google.com with SMTP id x21so5028969qto.13
 for <linux-rockchip@lists.infradead.org>; Thu, 05 Mar 2020 11:42:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ndufresne-ca.20150623.gappssmtp.com; s=20150623;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=w9aoQTL/UgB1vjS1g1BNCEFf726wH1IBTlgPdnlXI/U=;
 b=fjeRQagfXdDHJ9tX9UzUCHDLIRYnroBruHmgIET5qMJijpIVvgC0ui4ms8zm4UzETx
 qp3y6SeLtxy4vuSto/2bfD5iqzG09QLY+omDnutMsTl9P42zubJINW1U3+uygzUfqRcX
 rCBsRIoX7fr5DnA0zv4f0LKuY6LRaVQLxey8rncYou16dO6d8X1zdniHR/7BuER9ibfr
 FjTz/WmRRZnhn2FLNpaFU1yD2E8pulQoGO4ZRwXe8XnU11dUJoenN/h+dYZpVj+JiVmr
 fNLWNPv4kBYbx0VaGKTo6HoMSO8wsLZcmMJeM4fKUd4CmKNI6XMBOe3gWXCc6yoNH5KY
 wdYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=w9aoQTL/UgB1vjS1g1BNCEFf726wH1IBTlgPdnlXI/U=;
 b=kX8RwOKkbvKIct0XW3YE3CRPiHBhOAD/Xm3733PJOT14ghxhEYCLf0opSx/oV/ZSY8
 fHoOejsBDfJ2XRzvg7c8JQ7Zv6BhmRb3Bcwj5KqvFCW12wtHDJyG3HeVfz5/N0DXtZC9
 CzHKPepq3EyNMhwPRgrcyzcIvF60mIuSNXndCUCMa3ABJZDh1djlE59EYR/UCVea2fXJ
 jvcuut7f1Fm2q2DvDdVfbOvtRF8DzD0tx/NzEyxiiTDr1xb6NWwneh+VXMbrVWpM+2YI
 +fDGgmxorAoUhTThpf2yppQJabwTdtq+fCuE7f+dguZgw5c2zoI14XTaNeNLZV3gzN5w
 OudA==
X-Gm-Message-State: ANhLgQ1b6RZ3hLFf7rOszx34oZ8opZblTQuIPQOxyQ6qT9EoGb1q9ak2
 Px7mBqvubV2f2BrHVmwMBjVecA==
X-Google-Smtp-Source: ADFU+vvWoq0qrg/FJ5my9DoTUbwc8qrtj5pyQOQnMQmrnKcEjOkZ19Er1lI2KcCU/OZ1arc+wQFMBg==
X-Received: by 2002:ac8:530b:: with SMTP id t11mr274730qtn.277.1583437359636; 
 Thu, 05 Mar 2020 11:42:39 -0800 (PST)
Received: from nicolas-tpx395.localdomain ([2610:98:8005::527])
 by smtp.gmail.com with ESMTPSA id o16sm16335143qke.35.2020.03.05.11.42.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Mar 2020 11:42:38 -0800 (PST)
Message-ID: <c7a88abfaf00c00a5c4c4239d1d9c7b348bc052e.camel@ndufresne.ca>
Subject: Re: [PATCH v6 2/6] media: v4l2-core: Add helpers to build the H264
 P/B0/B1 reflists
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Boris Brezillon <boris.brezillon@collabora.com>, Mauro Carvalho Chehab
 <mchehab+huawei@kernel.org>
Date: Thu, 05 Mar 2020 14:42:34 -0500
In-Reply-To: <20200302154426.5fb09f91@collabora.com>
References: <20200220163016.21708-1-ezequiel@collabora.com>
 <20200220163016.21708-3-ezequiel@collabora.com>
 <20200302142433.0ad1b383@coco.lan> <20200302154426.5fb09f91@collabora.com>
User-Agent: Evolution 3.34.4 (3.34.4-1.fc31) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_114244_170387_F1BE332A 
X-CRM114-Status: GOOD (  30.26  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
 Jonas Karlman <jonas@kwiboo.se>, linux-kernel@vger.kernel.org,
 Tomasz Figa <tfiga@chromium.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Sakari Ailus <sakari.ailus@iki.fi>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Hans Verkuil <hverkuil@xs4all.nl>, kernel@collabora.com,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

TGUgbHVuZGkgMDIgbWFycyAyMDIwIMOgIDE1OjQ0ICswMTAwLCBCb3JpcyBCcmV6aWxsb24gYSDD
qWNyaXQgOgo+IE9uIE1vbiwgMiBNYXIgMjAyMCAxNDoyNDozMyArMDEwMAo+IE1hdXJvIENhcnZh
bGhvIENoZWhhYiA8bWNoZWhhYitodWF3ZWlAa2VybmVsLm9yZz4gd3JvdGU6Cj4gCj4gPiBFbSBU
aHUsIDIwIEZlYiAyMDIwIDEzOjMwOjEyIC0wMzAwCj4gPiBFemVxdWllbCBHYXJjaWEgPGV6ZXF1
aWVsQGNvbGxhYm9yYS5jb20+IGVzY3JldmV1Ogo+ID4gCj4gPiA+IEZyb206IEJvcmlzIEJyZXpp
bGxvbiA8Ym9yaXMuYnJlemlsbG9uQGNvbGxhYm9yYS5jb20+Cj4gPiA+IAo+ID4gPiBCdWlsZGlu
ZyB0aG9zZSBsaXN0IGlzIGEgc3RhbmRhcmQgcHJvY2VkdXJlIGRlc2NyaWJlZCBpbiBzZWN0aW9u
Cj4gPiA+ICc4LjIuNCBEZWNvZGluZyBwcm9jZXNzIGZvciByZWZlcmVuY2UgcGljdHVyZSBsaXN0
cyBjb25zdHJ1Y3Rpb24nIG9mCj4gPiA+IHRoZSBIMjY0IHNwZWNpZmljYXRpb24uCj4gPiA+IAo+
ID4gPiBXZSBhbHJlYWR5IGhhdmUgMiBkcml2ZXJzIG5lZWRpbmcgdGhlIHNhbWUgbG9naWMgKGhh
bnRybyBhbmQgcmt2ZGVjKSBhbmQKPiA+ID4gSSBzdXNwZWN0IHdlIHdpbGwgc29vbiBoYXZlIG1v
cmUuCj4gPiA+IAo+ID4gPiBMZXQncyBwcm92aWRlIGdlbmVyaWMgaGVscGVycyB0byBjcmVhdGUg
dGhvc2UgbGlzdHMuCj4gPiA+IAo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBCb3JpcyBCcmV6aWxsb24g
PGJvcmlzLmJyZXppbGxvbkBjb2xsYWJvcmEuY29tPgo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBFemVx
dWllbCBHYXJjaWEgPGV6ZXF1aWVsQGNvbGxhYm9yYS5jb20+Cj4gPiA+IC0tLQo+ID4gPiAgZHJp
dmVycy9tZWRpYS92NGwyLWNvcmUvS2NvbmZpZyAgICAgfCAgIDQgKwo+ID4gPiAgZHJpdmVycy9t
ZWRpYS92NGwyLWNvcmUvTWFrZWZpbGUgICAgfCAgIDEgKwo+ID4gPiAgZHJpdmVycy9tZWRpYS92
NGwyLWNvcmUvdjRsMi1oMjY0LmMgfCAyNTggKysrKysrKysrKysrKysrKysrKysrKysrKysrKwo+
ID4gPiAgaW5jbHVkZS9tZWRpYS92NGwyLWgyNjQuaCAgICAgICAgICAgfCAgODUgKysrKysrKysr
Cj4gPiA+ICA0IGZpbGVzIGNoYW5nZWQsIDM0OCBpbnNlcnRpb25zKCspCj4gPiA+ICBjcmVhdGUg
bW9kZSAxMDA2NDQgZHJpdmVycy9tZWRpYS92NGwyLWNvcmUvdjRsMi1oMjY0LmMKPiA+ID4gIGNy
ZWF0ZSBtb2RlIDEwMDY0NCBpbmNsdWRlL21lZGlhL3Y0bDItaDI2NC5oCj4gPiA+IAo+ID4gPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS92NGwyLWNvcmUvS2NvbmZpZyBiL2RyaXZlcnMvbWVk
aWEvdjRsMi0KPiA+ID4gY29yZS9LY29uZmlnCj4gPiA+IGluZGV4IDM5ZTNmYjMwYmEwYi4uOGE0
Y2NmYmNhOGNmIDEwMDY0NAo+ID4gPiAtLS0gYS9kcml2ZXJzL21lZGlhL3Y0bDItY29yZS9LY29u
ZmlnCj4gPiA+ICsrKyBiL2RyaXZlcnMvbWVkaWEvdjRsMi1jb3JlL0tjb25maWcKPiA+ID4gQEAg
LTQ1LDYgKzQ1LDEwIEBAIGNvbmZpZyBWSURFT19QQ0lfU0tFTEVUT04KPiA+ID4gIGNvbmZpZyBW
SURFT19UVU5FUgo+ID4gPiAgCXRyaXN0YXRlCj4gPiA+ICAKPiA+ID4gKyMgVXNlZCBieSBkcml2
ZXJzIHRoYXQgbmVlZCB2NGwyLWgyNjQua28KPiA+ID4gK2NvbmZpZyBWNEwyX0gyNjQKPiA+ID4g
Kwl0cmlzdGF0ZQo+ID4gPiArCj4gPiA+ICAjIFVzZWQgYnkgZHJpdmVycyB0aGF0IG5lZWQgdjRs
Mi1tZW0ybWVtLmtvCj4gPiA+ICBjb25maWcgVjRMMl9NRU0yTUVNX0RFVgo+ID4gPiAgCXRyaXN0
YXRlCj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3Y0bDItY29yZS9NYWtlZmlsZSBi
L2RyaXZlcnMvbWVkaWEvdjRsMi0KPiA+ID4gY29yZS9NYWtlZmlsZQo+ID4gPiBpbmRleCA3ODZi
ZDFlYzRkMWIuLmM1YzUzZTA5NDFhZCAxMDA2NDQKPiA+ID4gLS0tIGEvZHJpdmVycy9tZWRpYS92
NGwyLWNvcmUvTWFrZWZpbGUKPiA+ID4gKysrIGIvZHJpdmVycy9tZWRpYS92NGwyLWNvcmUvTWFr
ZWZpbGUKPiA+ID4gQEAgLTIxLDYgKzIxLDcgQEAgb2JqLSQoQ09ORklHX1ZJREVPX1Y0TDIpICs9
IHY0bDItZHYtdGltaW5ncy5vCj4gPiA+ICBvYmotJChDT05GSUdfVklERU9fVFVORVIpICs9IHR1
bmVyLm8KPiA+ID4gIAo+ID4gPiAgb2JqLSQoQ09ORklHX1Y0TDJfTUVNMk1FTV9ERVYpICs9IHY0
bDItbWVtMm1lbS5vCj4gPiA+ICtvYmotJChDT05GSUdfVjRMMl9IMjY0KSArPSB2NGwyLWgyNjQu
bwo+ID4gPiAgCj4gPiA+ICBvYmotJChDT05GSUdfVjRMMl9GTEFTSF9MRURfQ0xBU1MpICs9IHY0
bDItZmxhc2gtbGVkLWNsYXNzLm8KPiA+ID4gIAo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9t
ZWRpYS92NGwyLWNvcmUvdjRsMi1oMjY0LmMgYi9kcml2ZXJzL21lZGlhL3Y0bDItCj4gPiA+IGNv
cmUvdjRsMi1oMjY0LmMKPiA+ID4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiA+ID4gaW5kZXggMDAw
MDAwMDAwMDAwLi40ZjY4YzI3ZWM3ZmQKPiA+ID4gLS0tIC9kZXYvbnVsbAo+ID4gPiArKysgYi9k
cml2ZXJzL21lZGlhL3Y0bDItY29yZS92NGwyLWgyNjQuYwo+ID4gPiBAQCAtMCwwICsxLDI1OCBA
QAo+ID4gPiArLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAKPiA+ID4gKy8qCj4g
PiA+ICsgKiBWNEwyIEgyNjQgaGVscGVycy4KPiA+ID4gKyAqCj4gPiA+ICsgKiBDb3B5cmlnaHQg
KEMpIDIwMTkgQ29sbGFib3JhLCBMdGQuCj4gPiA+ICsgKgo+ID4gPiArICogQXV0aG9yOiBCb3Jp
cyBCcmV6aWxsb24gPGJvcmlzLmJyZXppbGxvbkBjb2xsYWJvcmEuY29tPgo+ID4gPiArICovCj4g
PiA+ICsKPiA+ID4gKyNpbmNsdWRlIDxsaW51eC9tb2R1bGUuaD4KPiA+ID4gKyNpbmNsdWRlIDxs
aW51eC9zb3J0Lmg+Cj4gPiA+ICsKPiA+ID4gKyNpbmNsdWRlIDxtZWRpYS92NGwyLWgyNjQuaD4K
PiA+ID4gKwo+ID4gPiArLyoqCj4gPiA+ICsgKiB2NGwyX2gyNjRfaW5pdF9yZWZsaXN0X2J1aWxk
ZXIoKSAtIEluaXRpYWxpemUgYSBQL0IwL0IxIHJlZmVyZW5jZSBsaXN0Cj4gPiA+ICsgKgkJCQkg
ICAgICBidWlsZGVyCj4gPiA+ICsgKgo+ID4gPiArICogQGI6IHRoZSBidWlsZGVyIGNvbnRleHQg
dG8gaW5pdGlhbGl6ZQo+ID4gPiArICogQGRlY19wYXJhbXM6IGRlY29kZSBwYXJhbWV0ZXJzIGNv
bnRyb2wKPiA+ID4gKyAqIEBzbGljZV9wYXJhbXM6IGZpcnN0IHNsaWNlIHBhcmFtZXRlcnMgY29u
dHJvbAo+ID4gPiArICogQHNwczogU1BTIGNvbnRyb2wKPiA+ID4gKyAqIEBkcGI6IERQQiB0byB1
c2Ugd2hlbiBjcmVhdGluZyB0aGUgcmVmZXJlbmNlIGxpc3QKPiA+ID4gKyAqLwo+ID4gPiArdm9p
ZAo+ID4gPiArdjRsMl9oMjY0X2luaXRfcmVmbGlzdF9idWlsZGVyKHN0cnVjdCB2NGwyX2gyNjRf
cmVmbGlzdF9idWlsZGVyICpiLAo+ID4gPiArCQljb25zdCBzdHJ1Y3QgdjRsMl9jdHJsX2gyNjRf
ZGVjb2RlX3BhcmFtcyAqZGVjX3BhcmFtcywKPiA+ID4gKwkJY29uc3Qgc3RydWN0IHY0bDJfY3Ry
bF9oMjY0X3NsaWNlX3BhcmFtcyAqc2xpY2VfcGFyYW1zLAo+ID4gPiArCQljb25zdCBzdHJ1Y3Qg
djRsMl9jdHJsX2gyNjRfc3BzICpzcHMsCj4gPiA+ICsJCWNvbnN0IHN0cnVjdCB2NGwyX2gyNjRf
ZHBiX2VudHJ5ICpkcGIpICAKPiA+IAo+ID4gVGhlIHByb3RvdHlwZSBoZXJlIGlzIG5vdCBuaWNl
Li4uCj4gPiAKPiA+ID4gK3sKPiA+ID4gKwlpbnQgY3VyX2ZyYW1lX251bSwgbWF4X2ZyYW1lX251
bTsKPiA+ID4gKwl1bnNpZ25lZCBpbnQgaTsKPiA+ID4gKwo+ID4gPiArCW1heF9mcmFtZV9udW0g
PSAxIDw8IChzcHMtPmxvZzJfbWF4X2ZyYW1lX251bV9taW51czQgKyA0KTsKPiA+ID4gKwljdXJf
ZnJhbWVfbnVtID0gc2xpY2VfcGFyYW1zLT5mcmFtZV9udW07Cj4gPiA+ICsKPiA+ID4gKwltZW1z
ZXQoYiwgMCwgc2l6ZW9mKCpiKSk7Cj4gPiA+ICsJaWYgKCEoc2xpY2VfcGFyYW1zLT5mbGFncyAm
IFY0TDJfSDI2NF9TTElDRV9GTEFHX0ZJRUxEX1BJQykpCj4gPiA+ICsJCWItPmN1cl9waWNfb3Jk
ZXJfY291bnQgPSBtaW4oZGVjX3BhcmFtcy0+Ym90dG9tX2ZpZWxkX29yZGVyX2NudCwKPiA+ID4g
KwkJCQkJICAgICBkZWNfcGFyYW1zLT50b3BfZmllbGRfb3JkZXJfY250KTsKPiA+ID4gKwllbHNl
IGlmIChzbGljZV9wYXJhbXMtPmZsYWdzICYgVjRMMl9IMjY0X1NMSUNFX0ZMQUdfQk9UVE9NX0ZJ
RUxEKQo+ID4gPiArCQliLT5jdXJfcGljX29yZGVyX2NvdW50ID0gZGVjX3BhcmFtcy0+Ym90dG9t
X2ZpZWxkX29yZGVyX2NudDsKPiA+ID4gKwllbHNlCj4gPiA+ICsJCWItPmN1cl9waWNfb3JkZXJf
Y291bnQgPSBkZWNfcGFyYW1zLT50b3BfZmllbGRfb3JkZXJfY250Owo+ID4gPiArCj4gPiA+ICsJ
Zm9yIChpID0gMDsgaSA8IDE2OyBpKyspIHsKPiA+ID4gKwkJdTMyIHBpY19vcmRlcl9jb3VudDsK
PiA+ID4gKwo+ID4gPiArCQlpZiAoIShkcGJbaV0uZmxhZ3MgJiBWNEwyX0gyNjRfRFBCX0VOVFJZ
X0ZMQUdfQUNUSVZFKSkKPiA+ID4gKwkJCWNvbnRpbnVlOwo+ID4gPiArCj4gPiA+ICsJCWItPnJl
ZnNbaV0ucGljX251bSA9IGRwYltpXS5waWNfbnVtOyAgCj4gPiAKPiA+IC4uLiBhcyB5b3UncmUg
ZXhwZWN0aW5nIGEgZml4ZWQgbnVtYmVyIG9mIGVsZW1lbnRzIGF0IERQQiBhcnJheSwgYW5kIHVz
aW5nCj4gPiBhIG1hZ2ljIG51bWJlciAoMTYpIGluc2lkZSB0aGUgZm9yIGxvb3AuCj4gCj4gSSB1
c2VkIHRvIGhhdmUgYSAnI2RlZmluZSBWNEwyX0gyNjRfTlVNX0RQQl9FTlRSSUVTIDE2JyBidXQg
aGF2ZSBiZWVuCj4gdG9sZCB0aGF0IHRoaXMgaXMgYW4gYXJiaXRyYXJ5IGxpbWl0YXRpb24gKHRo
ZSBzcGVjIGRvZXMgbm90IGV4cGxpY2l0bHkKPiBsaW1pdCB0aGUgRFBCIHNpemUsIGV2ZW4gaWYg
YWxsIHRoZSBIVyB3ZSd2ZSBzZWVuIHNlZW0gdG8gbGltaXQgaXQgdG8KPiAxNikuIE1heWJlIHdl
IGNhbiBwYXNzIHRoZSBEUEIgYXJyYXkgc2l6ZSBhcyBhbiBhcmd1bWVudCBzbyBpdCBzdGF5cwo+
IEhXLXNwZWNpZmljLgoKaXQncyBmb3JtYWxpemVkIGluIEEuMzEgaCksIHRvIHF1b3RlIGl0OgoK
bWF4X2RlY19mcmFtZV9idWZmZXJpbmcgPD0gTWF4RHBiRnJhbWVzLCB3aGVyZSBNYXhEcGJGcmFt
ZXMgaXMgZXF1YWwgdG8KCiAgTWluKCBNYXhEcGJNYnMgLyAoIFBpY1dpZHRoSW5NYnMgKiBGcmFt
ZUhlaWdodEluTWJzICksIDE2ICkKClNvIGEgRFBCIGxhcmdlciB0aGVuIHRoaXMgaXMgbm90IGFu
IEguMjQgRFBCLgoKPiAKPiA+ID4gKwo+ID4gPiArCQkvKgo+ID4gPiArCQkgKiBIYW5kbGUgZnJh
bWVfbnVtIHdyYXBhcm91bmQgYXMgZGVzY3JpYmVkIGluIHNlY3Rpb24KPiA+ID4gKwkJICogJzgu
Mi40LjEgRGVjb2RpbmcgcHJvY2VzcyBmb3IgcGljdHVyZSBudW1iZXJzJyBvZiB0aGUgc3BlYy4K
PiA+ID4gKwkJICogVE9ETzogVGhpcyBsb2dpYyB3aWxsIGhhdmUgdG8gYmUgYWRqdXN0ZWQgd2hl
biB3ZSBzdGFydAo+ID4gPiArCQkgKiBzdXBwb3J0aW5nIGludGVybGFjZWQgY29udGVudC4KPiA+
ID4gKwkJICovCj4gPiA+ICsJCWlmIChkcGJbaV0uZnJhbWVfbnVtID4gY3VyX2ZyYW1lX251bSkK
PiA+ID4gKwkJCWItPnJlZnNbaV0uZnJhbWVfbnVtID0gKGludClkcGJbaV0uZnJhbWVfbnVtIC0K
PiA+ID4gKwkJCQkJICAgICAgIG1heF9mcmFtZV9udW07Cj4gPiA+ICsJCWVsc2UKPiA+ID4gKwkJ
CWItPnJlZnNbaV0uZnJhbWVfbnVtID0gZHBiW2ldLmZyYW1lX251bTsKPiA+ID4gKwo+ID4gPiAr
CQlpZiAoIShkcGJbaV0uZmxhZ3MgJiBWNEwyX0gyNjRfRFBCX0VOVFJZX0ZMQUdfRklFTEQpKQo+
ID4gPiArCQkJcGljX29yZGVyX2NvdW50ID0gbWluKGRwYltpXS50b3BfZmllbGRfb3JkZXJfY250
LAo+ID4gPiArCQkJCQkgICAgICBkcGJbaV0uYm90dG9tX2ZpZWxkX29yZGVyX2NudCk7Cj4gPiA+
ICsJCWVsc2UgaWYgKGRwYltpXS5mbGFncyAmIFY0TDJfSDI2NF9EUEJfRU5UUllfRkxBR19CT1RU
T01fRklFTEQpCj4gPiA+ICsJCQlwaWNfb3JkZXJfY291bnQgPSBkcGJbaV0uYm90dG9tX2ZpZWxk
X29yZGVyX2NudDsKPiA+ID4gKwkJZWxzZQo+ID4gPiArCQkJcGljX29yZGVyX2NvdW50ID0gZHBi
W2ldLnRvcF9maWVsZF9vcmRlcl9jbnQ7Cj4gPiA+ICsKPiA+ID4gKwkJYi0+cmVmc1tpXS5waWNf
b3JkZXJfY291bnQgPSBwaWNfb3JkZXJfY291bnQ7Cj4gPiA+ICsJCWItPnVub3JkZXJlZF9yZWZs
aXN0W2ItPm51bV92YWxpZF0gPSBpOwo+ID4gPiArCQliLT5udW1fdmFsaWQrKzsKPiA+ID4gKwl9
Cj4gPiA+ICsKPiA+ID4gKwlmb3IgKGkgPSBiLT5udW1fdmFsaWQ7IGkgPCBBUlJBWV9TSVpFKGIt
PnVub3JkZXJlZF9yZWZsaXN0KTsgaSsrKQo+ID4gPiArCQliLT51bm9yZGVyZWRfcmVmbGlzdFtp
XSA9IGk7Cj4gPiA+ICt9Cj4gPiA+ICtFWFBPUlRfU1lNQk9MX0dQTCh2NGwyX2gyNjRfaW5pdF9y
ZWZsaXN0X2J1aWxkZXIpOwo+ID4gPiArCj4gPiA+ICtzdGF0aWMgaW50IHY0bDJfaDI2NF9wX3Jl
Zl9saXN0X2NtcChjb25zdCB2b2lkICpwdHJhLCBjb25zdCB2b2lkICpwdHJiLAo+ID4gPiArCQkJ
CSAgICBjb25zdCB2b2lkICpkYXRhKQo+ID4gPiArewo+ID4gPiArCWNvbnN0IHN0cnVjdCB2NGwy
X2gyNjRfcmVmbGlzdF9idWlsZGVyICpidWlsZGVyID0gZGF0YTsKPiA+ID4gKwl1OCBpZHhhLCBp
ZHhiOwo+ID4gPiArCj4gPiA+ICsJaWR4YSA9ICooKHU4ICopcHRyYSk7Cj4gPiA+ICsJaWR4YiA9
ICooKHU4ICopcHRyYik7Cj4gPiA+ICsKPiA+ID4gKwlpZiAoYnVpbGRlci0+cmVmc1tpZHhhXS5s
b25ndGVybSAhPSBidWlsZGVyLT5yZWZzW2lkeGJdLmxvbmd0ZXJtKSB7ICAKPiA+IAo+ID4gV2hl
cmUgZG8geW91IGVuc3VyZSB0aGF0IGlkeGEgYW5kIGlkeGIgd29uJ3QgYmUgYmlnZ2VyIHRoYW4g
TlVNX0RQQl9FTlRSSUVTPwo+IAo+IElmIGl0IGRvZXMgdGhhdCBtZWFucyBzb21ldGhpbmcgd2Vu
dCB3cm9uZyBpbiB0aGUgaW5pdCBmdW5jLiBJIGNhbiBhZGQKPiBhIFdBUk5fT04oKSBhbmQgYmFp
bCBvdXQgaWYgeW91IHdhbnQsIGJ1dCBJIGNhbid0IHJldHVybiBhbiBlcnJvciBoZXJlCj4gKHRo
YXQncyBub3Qgd2hhdCB0aGUgY2FsbGVyIG9mIHRoZSBjYWxsYmFjayBleHBlY3RzKS4KCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
