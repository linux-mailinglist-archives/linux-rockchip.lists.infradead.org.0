Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C605B0878
	for <lists+linux-rockchip@lfdr.de>; Thu, 12 Sep 2019 07:52:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GHzZ2sQIBM3HMiPlRonj+wkSBSQExBIX5PknPJJjAOc=; b=u0fctqJByFsKnn
	HcNGzvHPfmUmRlwJzV+fkiB7zn7axBFd8tR0Vkv4wtlHAj7O2zUxETn870KTkUOop6lm0msI3CslL
	EMtoWMsrtwosF2nopSHM0mDMGhzjzsR/bcvo1aOlk+GXlxL3mPfdnc6lsdcrpVGGY1E1k8gCyCcSd
	rCXhrPasSaYhiJ6c3lc9stjup8boMmwjqYhhS/+djFKfs9RHb1CtD+UNzyiiuW90szPf+NXhS9dFH
	UeBGfr+37gmwocLIn3d6nPz7kk/KbAYzJSZ6TiaoQIdEctc3KNXdl1kV7qMWFlICWrBE+HB34x93M
	gqRuHP9K+y0VB5VXfBxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8I1u-000821-MT; Thu, 12 Sep 2019 05:52:30 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8I1r-00081a-Kp
 for linux-rockchip@lists.infradead.org; Thu, 12 Sep 2019 05:52:29 +0000
Received: by mail-ed1-x542.google.com with SMTP id o9so22853589edq.0
 for <linux-rockchip@lists.infradead.org>; Wed, 11 Sep 2019 22:52:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=zYhiCckqOXI05h66pSc49yJ2M97KJomA6zTeLvJqATU=;
 b=N/6X6JFb465MDW4UOH0bJ7UVlCMn+fKiILQz+XlhCgqXqKZ9Gln8gkjQO7D8f43Vzm
 8eX6U8FbQTFyGpMJuEIR5MnYhp7cSge0yKbrEn6SoCMmpJy8xajyWMuzdHAK1sFYI/j3
 L28pcq5cBcvI3laZEDztFQ9iIzw4pxAhg3YSQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=zYhiCckqOXI05h66pSc49yJ2M97KJomA6zTeLvJqATU=;
 b=WVmJpZq1mlkPCXSuqvxGqIhu1jYkOSL9yjztwuMhjYdvgA+E8lOomdlWNRGrmPDWib
 BWTa+0BgAFtAOOw5NFeC+d3AMIbQHmVOacmiToa5oEqHiNjxhwwlAYnppujJNIRlkxV9
 BDJ9UYr92jB/TQsRSXKXdAi7W1ZYU/6MUMLRJ+dbuceu5LwUNejUZpMYB5z+JBlwkJoc
 EoJKB5J9aEDF5i5qjhp5d3763Ox4PFBZoQsYjp+t7XEzCD+RQ/CSmedwf33bF6WizFAe
 MWXPfIJBTweWTuAnhSqh0hH5w5cBCnld6Ibnj250OfbUaN4ohBn1XctTKh5cBGb9meBY
 mCDw==
X-Gm-Message-State: APjAAAVrBuQCi9nKNGZocxiwv3kRlmD+CA4hIdXttDYrPh+aPxvP55ok
 VN2wAYP2ROJyB2zS8KzbP4ujPMRAb/9/nA==
X-Google-Smtp-Source: APXvYqzo+HbcYKzS/zho5PBxPM+MUyeRt/Ge+rd0UVDx5c6iq9P3HHyh74zhE/zz2+AJAydvW5g4gA==
X-Received: by 2002:a50:b501:: with SMTP id y1mr39874411edd.167.1568267543479; 
 Wed, 11 Sep 2019 22:52:23 -0700 (PDT)
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com.
 [209.85.128.53])
 by smtp.gmail.com with ESMTPSA id h6sm3805452ede.35.2019.09.11.22.52.21
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 11 Sep 2019 22:52:22 -0700 (PDT)
Received: by mail-wm1-f53.google.com with SMTP id x2so616612wmj.2
 for <linux-rockchip@lists.infradead.org>; Wed, 11 Sep 2019 22:52:21 -0700 (PDT)
X-Received: by 2002:a1c:c104:: with SMTP id r4mr7245357wmf.64.1568267541410;
 Wed, 11 Sep 2019 22:52:21 -0700 (PDT)
MIME-Version: 1.0
References: <20190903181711.7559-1-ezequiel@collabora.com>
 <CAAFQd5AdikoN+7TG=0ZGFkSzaK2UFHM4VG7SYtfUtmjQgD61zA@mail.gmail.com>
 <6e493142690d48ee7e65c1cb2a4d6aec1e3b671b.camel@collabora.com>
 <c7b62640ae0e57a9da0c6c5245b5454af08ad2a0.camel@ndufresne.ca>
In-Reply-To: <c7b62640ae0e57a9da0c6c5245b5454af08ad2a0.camel@ndufresne.ca>
From: Tomasz Figa <tfiga@chromium.org>
Date: Thu, 12 Sep 2019 14:52:09 +0900
X-Gmail-Original-Message-ID: <CAAFQd5CKkdN0byeAonPvvzmHQ5CRXLRVidAG8FGmxExHzgvaqA@mail.gmail.com>
Message-ID: <CAAFQd5CKkdN0byeAonPvvzmHQ5CRXLRVidAG8FGmxExHzgvaqA@mail.gmail.com>
Subject: Re: [PATCH 0/4] Enable Hantro G1 post-processor
To: Nicolas Dufresne <nicolas@ndufresne.ca>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_225227_709649_036F4B6C 
X-CRM114-Status: GOOD (  22.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Heiko Stuebner <heiko@sntech.de>, Jonas Karlman <jonas@kwiboo.se>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, kernel@collabora.com,
 Ezequiel Garcia <ezequiel@collabora.com>, Chris Healy <cphealy@gmail.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

T24gVGh1LCBTZXAgMTIsIDIwMTkgYXQgNDo0OSBBTSBOaWNvbGFzIER1ZnJlc25lIDxuaWNvbGFz
QG5kdWZyZXNuZS5jYT4gd3JvdGU6Cj4KPiBMZSBtZXJjcmVkaSAxMSBzZXB0ZW1icmUgMjAxOSDD
oCAwOToyNyArMDEwMCwgRXplcXVpZWwgR2FyY2lhIGEgw6ljcml0IDoKPiA+IE9uIE1vbiwgMjAx
OS0wOS0wOSBhdCAxNjowNyArMDkwMCwgVG9tYXN6IEZpZ2Egd3JvdGU6Cj4gPiA+IEhpIEV6ZXF1
aWVsLAo+ID4gPgo+ID4gPiBPbiBXZWQsIFNlcCA0LCAyMDE5IGF0IDM6MTcgQU0gRXplcXVpZWwg
R2FyY2lhIDxlemVxdWllbEBjb2xsYWJvcmEuY29tPiB3cm90ZToKPiA+ID4gPiBIaSBhbGwsCj4g
PiA+ID4KPiA+ID4gPiBUaGlzIHNlcmllcyBlbmFibGVzIHRoZSBwb3N0LXByb2Nlc3NvciBzdXBw
b3J0IGF2YWlsYWJsZQo+ID4gPiA+IG9uIHRoZSBIYW50cm8gRzEgVlBVLiBUaGUgcG9zdC1wcm9j
ZXNzb3IgYmxvY2sgY2FuIGJlCj4gPiA+ID4gcGlwZWxpbmVkIHdpdGggdGhlIGRlY29kZXIgaGFy
ZHdhcmUsIGFsbG93aW5nIHRvIHBlcmZvcm0KPiA+ID4gPiBvcGVyYXRpb25zIHN1Y2ggYXMgY29s
b3IgY29udmVyc2lvbiwgc2NhbGluZywgcm90YXRpb24sCj4gPiA+ID4gY3JvcHBpbmcsIGFtb25n
IG90aGVycy4KPiA+ID4gPgo+ID4gPiA+IFRoZSBkZWNvZGVyIGhhcmR3YXJlIG5lZWRzIGl0cyBv
d24gc2V0IG9mIE5WMTIgYnVmZmVycwo+ID4gPiA+ICh0aGUgbmF0aXZlIGRlY29kZXIgZm9ybWF0
KSwgYW5kIHRoZSBwb3N0LXByb2Nlc3NvciBpcyB0aGUKPiA+ID4gPiBvd25lciBvZiB0aGUgQ0FQ
VFVSRSBidWZmZXJzLiBUaGlzIGFsbG93cyB0aGUgYXBwbGljYXRpb24KPiA+ID4gPiBnZXQgcHJv
Y2Vzc2VkIChzY2FsZWQsIGNvbnZlcnRlZCwgZXRjKSBidWZmZXJzLCBjb21wbGV0ZWx5Cj4gPiA+
ID4gdHJhbnNwYXJlbnRseS4KPiA+ID4gPgo+ID4gPiA+IFRoaXMgZmVhdHVyZSBpcyBpbXBsZW1l
bnRlZCBieSBleHBvc2luZyBvdGhlciBDQVBUVVJFIHBpeGVsCj4gPiA+ID4gZm9ybWF0cyB0byB0
aGUgYXBwbGljYXRpb24gKEVOVU1fRk1UKS4gV2hlbiB0aGUgYXBwbGljYXRpb24KPiA+ID4gPiBz
ZXRzIGEgcGl4ZWwgZm9ybWF0IG90aGVyIHRoYW4gTlYxMiwgdGhlIGRyaXZlciB3aWxsIGVuYWJs
ZQo+ID4gPiA+IGFuZCB1c2UgdGhlIHBvc3QtcHJvY2Vzc29yIHRyYW5zcGFyZW50bHkuCj4gPiA+
Cj4gPiA+IEknbGwgdHJ5IHRvIHJldmlldyB0aGUgc2VyaWVzIGEgYml0IGxhdGVyLCBidXQgYSBn
ZW5lcmFsIGNvbW1lbnQgaGVyZQo+ID4gPiBpcyB0aGF0IHRoZSB1c2Vyc3BhY2Ugd291bGRuJ3Qg
aGF2ZSBhIHdheSB0byBkaXN0aW5ndWlzaCBiZXR3ZWVuIHRoZQo+ID4gPiBuYXRpdmUgYW5kIHBv
c3QtcHJvY2Vzc2VkIGZvcm1hdHMuIEknbSBwcmV0dHkgbXVjaCBzdXJlIHRoYXQKPiA+ID4gcG9z
dC1wcm9jZXNzaW5nIGF0IGxlYXN0IGltcG9zZXMgc29tZSBwb3dlciBwZW5hbHR5LCBzbyBpdCB3
b3VsZCBiZQo+ID4gPiBnb29kIGlmIHRoZSB1c2Vyc3BhY2UgY291bGQgYXZvaWQgaXQgaWYgdW5u
ZWNlc3NhcnkuCj4gPiA+Cj4gPgo+ID4gSG0sIHRoYXQncyB0cnVlLCBnb29kIGNhdGNoLgo+ID4K
PiA+IFNvLCBpdCB3b3VsZCBiZSBkZXNpcmFibGUgdG8gcmV0YWluIHRoZSBjdXJyZW50IGJlaGF2
aW9yIG9mIGFsbG93aW5nCj4gPiB0aGUgYXBwbGljYXRpb24gdG8ganVzdCBzZXQgYSBkaWZmZXJl
bnQgcGl4ZWwgZm9ybWF0IGFuZCBnZXQKPiA+IGEgcG9zdC1wcm9jZXNzZWQgZnJhbWUsIHRyYW5z
cGFyZW50bHkuCj4gPgo+ID4gQnV0IGF0IHRoZSBzYW1lIHRpbWUsIGl0IHdvdWxkIGJlIG5pY2Ug
aWYgdGhlIGFwcGxpY2F0aW9uIGlzIHNvbWVob3cKPiA+IGF3YXJlIG9mIHRoZSBwb3N0LXByb2Nl
c3NpbmcgaGFwcGVuaW5nLiBNYXliZSB3ZSBjYW4gZXhwb3NlIGEgbW9yZQo+ID4gYWNjdXJhdGUg
bWVkaWEgY29udHJvbGxlciB0b3BvbG9neSwgaGF2ZSBhcHBsaWNhdGlvbnMgZW5hYmxlCj4gPiB0
aGUgcG9zdC1wcm9jZXNzaW5nIHBpcGVsaW5lIGV4cGxpY2l0bHkuCj4KPiBIb3cgaXQgd29ya3Mg
b24gdGhlIHN0YXRlZnVsIHNpZGUgaXMgdGhhdCB1c2Vyc3BhY2Ugc2V0IHRoZSBlbmNvZGluZwo+
IHR5cGUgKHRoZSBjb2RlYyksIHRoZW4gcGFzc2VzIGEgaGVhZGVyIChpbiBvdXIgY2FzZSwgdGhl
cmUgd2lsbCBiZQo+IHBhcnNlZCBzdHJ1Y3R1cmVzIHJlcGxhY2luZyB0aGlzKSBmaXJzdC4gVGhl
IGRyaXZlciB0aGVuIGNvbmZpZ3VyZQo+IGNhcHR1cmUgZm9ybWF0LCBnaXZpbmcgYSBoaW50IG9m
IHRoZSAiZGVmYXVsdCIgb3IgIm5hdGl2ZSIgZm9ybWF0LiBUaGlzCj4gbWF5IG9yIG1heSBub3Qg
YmUgc3VmZmljaWVudCwgYnV0IGl0IGRvZXMgd29yayBpbiBnaXZpbmcgdXNlcnNwYWNlIGEKPiBo
aW50LgoKVGhlIGJhZCBzaWRlIG9mIHRoYXQgaXMgdGhhdCB3ZSBjYW4ndCBoYW5kbGUgbW9yZSB0
aGFuIDEgbmF0aXZlIGZvcm1hdC4KCkZvciB0aGUgbW9zdCBiYWNrd2FyZHMtY29tcGF0aWJsZSBi
ZWhhdmlvciwgc29ydGluZyB0aGUgcmVzdWx0cyBvZgpFTlVNX0ZNVCBhY2NvcmRpbmcgdG8gZm9y
bWF0IHByZWZlcmVuY2Ugd291bGQgYWxsb3cgdGhlIGFwcGxpY2F0aW9ucwp0aGF0IGNob29zZSB0
aGUgZmlyc3QgZm9ybWF0IHJldHVybmVkIHRoYXQgd29ya3MgZm9yIHRoZW0gdG8gY2hvb3NlCnRo
ZSBiZXN0IG9uZS4KCkZvciBhIGZ1cnRoZXIgaW1wcm92ZW1lbnQsIGFuIEVOVU1fRk1UIGZsYWcg
dGhhdCB0ZWxscyB0aGUgdXNlcnNwYWNlCnRoYXQgYSBmb3JtYXQgaXMgcHJlZmVycmVkIGNvdWxk
IHdvcmsuCgpUaGF0IHNhaWQsIG1vZGVsbGluZyB0aGUgcGlwZWxpbmUgYXBwcm9wcmlhdGVseSB1
c2luZyB0aGUgbWVkaWEKY29udHJvbGxlciBpcyB0aGUgaWRlYSBJIGxpa2UgdGhlIG1vc3QsIGJl
Y2F1c2UgaXQncyB0aGUgbW9zdApjb21wcmVoZW5zaXZlIHNvbHV0aW9uLiBUaGF0IHdvdWxkIGhh
dmUgdG8gYmUgd2VsbCBzcGVjaWZpZWQgYW5kCmRvY3VtZW50ZWQsIHRob3VnaCwgYW5kIHNvdW5k
cyBsaWtlIGEgbG9uZyB0ZXJtIGVmZm9ydC4KCkJlc3QgcmVnYXJkcywKVG9tYXN6CgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
