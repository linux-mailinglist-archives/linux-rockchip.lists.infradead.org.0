Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99B0A1D232C
	for <lists+linux-rockchip@lfdr.de>; Thu, 14 May 2020 01:38:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qU+g2OMaGcR+gaxTekdpk052MJzASKAiey//WwtDY/4=; b=CcWoZVZyOMLcRJ
	j3sFX4XLMbFPba/cxCAtr8TIu5E0m0jogI7vE4RuYA/2FnkJOSm5ow7fQSYc+XKB/GWF9NJBE2joM
	BfZlFANT2erJVyCEwvg3bxb0q/qsOY8avGx1vc7ca6avk+hc6NkLbqnFSVU+VcxmS02En+hm9Lpm4
	cE7qkuMpTw1xgye0O58wwioeZ9kHAaWRWDpAeaSRtljEojEnBYOSI1AAIJ5a8G/GA3B8U2JHa/8kO
	6HUe7sDRNL2A+8PK6QhGWu+y241Z5QbO7Qq9dVu+i0PcOoqz5AK/7TbEoGtP3eXYSQqXWmj3smo5r
	0uXb2RIBN4s42l+p9KGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ0xZ-0000iy-BP; Wed, 13 May 2020 23:38:45 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ0xW-0000iP-3l
 for linux-rockchip@lists.infradead.org; Wed, 13 May 2020 23:38:43 +0000
Received: by mail-qk1-x742.google.com with SMTP id s1so1247907qkf.9
 for <linux-rockchip@lists.infradead.org>; Wed, 13 May 2020 16:38:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ndufresne-ca.20150623.gappssmtp.com; s=20150623;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=gXX/nwUhWX5Ah6+4F5B0DqfcQzEJjwlK8RQjDyFdkkw=;
 b=IDTCvW/h15nfvqhHfob9E+czlTHbAFdazhK0hjKukexcmuenAmDFnJg1UoJW7KyurL
 CVJqdKa8QR/aRWlPMccAbqKCLUib954fp9xaRtsBnmy+K284h34GyaYQ8uPDbdGwUaHa
 FHy6snYwlWiAL5oKoLO1InN+p2u0w+ZMwi8otHVMyx+3aIgEV+4n4PYAFAVRalVpk5IH
 CO97cb9WSypDXjvdL5TocfDreScUhjcPcgY3oVIIgL/t7p7XSFQNXlaAgmUB07sHIX1f
 c8IwDZB/B7Z1ihqEOpc7N0Zwgd/2Nob4GJYvmTudsLePuAPIux4PNemN8ei7P8P9LGPr
 R/AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=gXX/nwUhWX5Ah6+4F5B0DqfcQzEJjwlK8RQjDyFdkkw=;
 b=kV3vmQOTW8odbKEamNvj0r68+uIYMW6x0Q9rY3GJq58kgP4QWvnsofTItfeJUa44rL
 2PA74724W6hWj72VA5DfRsDG0+HPlPNFJR5GX0msYLeyJPJRDc0aSuieClyaINL//7Ti
 Q6phCZ1Sn6vNF5HPEyBFkGlhXNj5g4jSPTkYQv/WBsNCuVCFDQbhLmhmGOKagAfR6wAB
 x4Wvh0U3zNO+jQDLiculfIFpaz4prbs9werdrqoQqBUhbk2pxylAo6t5/q50TJnPi69n
 QeZOc5SED4aVBn4+MULSKrw78W0QG3Lg255YnQDbsMJ3LfvsUrGhwDA/s6PScYW5OstA
 7ajQ==
X-Gm-Message-State: AOAM5310LTCXSXMmaA1p8pgL+qyJFTwNTGnA8v+swB1HhlonSDuenIwI
 197OjFszeMObkxA0Go3P1k9SjA==
X-Google-Smtp-Source: ABdhPJzd/lwwcWhuSA6CCvJywL/X0Z4NV50aTy2l6Sg9uvPjGXI626hmPK4B2VCEGG3fDbtl86XIgg==
X-Received: by 2002:a05:620a:1472:: with SMTP id
 j18mr2011402qkl.363.1589413114645; 
 Wed, 13 May 2020 16:38:34 -0700 (PDT)
Received: from skullcanyon ([192.222.193.21])
 by smtp.gmail.com with ESMTPSA id y21sm1154975qkb.95.2020.05.13.16.38.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 May 2020 16:38:33 -0700 (PDT)
Message-ID: <b7122cb49cfa0bcfa433c154f6cb64ee0dba55da.camel@ndufresne.ca>
Subject: Re: [PATCH v3 1/3] media: rkvdec: Fix .buf_prepare
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Ezequiel Garcia <ezequiel@collabora.com>, Tomasz Figa <tfiga@chromium.org>
Date: Wed, 13 May 2020 19:38:32 -0400
In-Reply-To: <ac6e162a24a8e2b2180b1a743e5ecd9a2023ac65.camel@collabora.com>
References: <20200505134110.3435-1-ezequiel@collabora.com>
 <20200505134110.3435-2-ezequiel@collabora.com>
 <CAAFQd5AWZFoPk2YTp2k8M7LvJshxw46-z+wK2VoM9EzB2CqiFA@mail.gmail.com>
 <c29fcc922a4917ac695043e605973ba9649f9c9b.camel@collabora.com>
 <CAAFQd5A458E8iqwakKTDEyTHC+NYY-M1SaTS3m0MARwPaRyOuw@mail.gmail.com>
 <ac6e162a24a8e2b2180b1a743e5ecd9a2023ac65.camel@collabora.com>
User-Agent: Evolution 3.36.2 (3.36.2-1.fc32) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_163842_157145_35DCB000 
X-CRM114-Status: GOOD (  19.47  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Heiko Stuebner <heiko@sntech.de>, Alexandre Courbot <acourbot@chromium.org>,
 Jonas Karlman <jonas@kwiboo.se>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Hans Verkuil <hverkuil@xs4all.nl>, "open
 list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Jeffrey Kardatzke <jkardatzke@chromium.org>, kernel@collabora.com,
 Gustavo Padovan <gustavo.padovan@collabora.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

TGUgbWFyZGkgMDUgbWFpIDIwMjAgw6AgMTE6MjcgLTAzMDAsIEV6ZXF1aWVsIEdhcmNpYSBhIMOp
Y3JpdCA6Cj4gT24gVHVlLCAyMDIwLTA1LTA1IGF0IDE2OjA1ICswMjAwLCBUb21hc3ogRmlnYSB3
cm90ZToKPiA+IE9uIFR1ZSwgTWF5IDUsIDIwMjAgYXQgMzo1OSBQTSBFemVxdWllbCBHYXJjaWEg
PGV6ZXF1aWVsQGNvbGxhYm9yYS5jb20+IHdyb3RlOgo+ID4gPiBPbiBUdWUsIDIwMjAtMDUtMDUg
YXQgMTU6NTYgKzAyMDAsIFRvbWFzeiBGaWdhIHdyb3RlOgo+ID4gPiA+IEhpIEV6ZXF1aWVsLAo+
ID4gPiA+IAo+ID4gPiA+IE9uIFR1ZSwgTWF5IDUsIDIwMjAgYXQgMzo0MSBQTSBFemVxdWllbCBH
YXJjaWEgPGV6ZXF1aWVsQGNvbGxhYm9yYS5jb20+IHdyb3RlOgo+ID4gPiA+ID4gVGhlIGRyaXZl
ciBzaG91bGQgb25seSBzZXQgdGhlIHBheWxvYWQgb24gLmJ1Zl9wcmVwYXJlCj4gPiA+ID4gPiBp
ZiB0aGUgYnVmZmVyIGlzIENBUFRVUkUgdHlwZSwgb3IgaWYgYW4gT1VUUFVUIGJ1ZmZlcgo+ID4g
PiA+ID4gaGFzIGEgemVyb2VkIHBheWxvYWQuCj4gPiA+ID4gCj4gPiA+ID4gVGhhbmtzIGZvciB0
aGUgcGF0Y2guIEp1c3Qgb25lIHF1ZXN0aW9uIGJlbG93Lgo+ID4gPiA+IAo+ID4gPiA+IFdoZXJl
IGRvZXMgdGhlIHJlcXVpcmVtZW50IHRvIHNldCBPVVRQVVQgYnVmZmVyIGJ5dGVzdXNlZCB0byBz
aXplaW1hZ2UKPiA+ID4gPiBpZiB0aGUgb3JpZ2luYWwgYnl0ZXN1c2VkIGlzIDAgY29tZSBmcm9t
Pwo+ID4gPiA+IAo+ID4gPiAKPiA+ID4gSWYgSSdtIHJlYWRpbmcgZW5nbGlzaCBjb3JyZWN0bHks
IGl0J3MgaGVyZToKPiA+ID4gCj4gPiA+IGh0dHBzOi8vd3d3Lmtlcm5lbC5vcmcvZG9jL2h0bWwv
bGF0ZXN0L21lZGlhL3VhcGkvdjRsL2J1ZmZlci5odG1sCj4gPiA+IAo+ID4gPiAiIiIKPiA+ID4g
VGhlIG51bWJlciBvZiBieXRlcyBvY2N1cGllZCBieSB0aGUgZGF0YSBpbiB0aGUgYnVmZmVyLiBJ
dCBkZXBlbmRzIG9uIHRoZSBuZWdvdGlhdGVkIGRhdGEgZm9ybWF0IGFuZCBtYXkgY2hhbmdlIHdp
dGggZWFjaCBidWZmZXIgZm9yIGNvbXByZXNzZWQKPiA+ID4gdmFyaWFibGUgc2l6ZSBkYXRhIGxp
a2UgSlBFRyBpbWFnZXMuIERyaXZlcnMgbXVzdCBzZXQgdGhpcyBmaWVsZCB3aGVuIHR5cGUgcmVm
ZXJzIHRvIGEgY2FwdHVyZSBzdHJlYW0sIGFwcGxpY2F0aW9ucyB3aGVuIGl0IHJlZmVycyB0byBh
biBvdXRwdXQKPiA+ID4gc3RyZWFtLiBJZiB0aGUgYXBwbGljYXRpb24gc2V0cyB0aGlzIHRvIDAg
Zm9yIGFuIG91dHB1dCBzdHJlYW0sIHRoZW4gYnl0ZXN1c2VkIHdpbGwgYmUgc2V0IHRvIHRoZSBz
aXplIG9mIHRoZSBidWZmZXIgKHNlZSB0aGUgbGVuZ3RoIGZpZWxkIG9mIHRoaXMKPiA+ID4gc3Ry
dWN0KSBieSB0aGUgZHJpdmVyLiBGb3IgbXVsdGlwbGFuYXIgZm9ybWF0cyB0aGlzIGZpZWxkIGlz
IGlnbm9yZWQgYW5kIHRoZSBwbGFuZXMgcG9pbnRlciBpcyB1c2VkIGluc3RlYWQuCj4gPiA+ICIi
Igo+ID4gCj4gPiBPa2F5LCB0aGFua3MuIEkgd29uZGVyIGlmIHRoaXMgc2hvdWxkbid0IGJlIGhh
bmRsZWQgYnkgdGhlIGNvcmUsCj4gPiB0aG91Z2guIEVzcGVjaWFsbHkgZ2l2ZW4gdGhhdCB0aGUg
ZG9jdW1lbnQgcmVmZXJzIHRvIHRoZSBsZW5ndGggZmllbGQKPiA+IHNwZWNpZmljYWxseSBhbmQg
bm90IHRoZSBzaXplaW1hZ2Ugc2V0IGluIHRoZSBmb3JtYXQuCj4gPiAKPiAKPiBZZXMsIGVpdGhl
ciBjb3JlIG9yIGhlbHBlciwgdGhpcyBkZWZpbml0ZWx5IGNhbGxzIGZvciBhIGdlbmVyaWMgc29s
dXRpb24uCgpGb3IgdGhlIGNvbnRleHQsIHRoaXMgaXMgZm9yIGJhY2t3YXJkIGNvbXBhdGliaWxp
dHkuIEknbSBub3QgY2VydGFpbiBpdAptYWtlIHNlbnNlIGZvciBuZXcgZHJpdmVyIGludGVyZmFj
ZSBsaWtlIFJLVkRFQy4gU3BlY2lhbGx5IHRoYXQgaWYgdGhlCnVzZXIgZGlkIHBhc3MgYW4gZW1w
dHkgYnVmZmVyIGJ5IGFjY2lkZW50LCB0aGlzIHdpbGwgcHVzaCBnYXJiYWdlIGludG8KdGhlIGRy
aXZlci4gVGhhdCBiZWluZyBzYWlkLCBpdCBzZWVtcyB0byBtYXRjaCB0aGUgc3BlYy4KCj4gCj4g
RXplcXVpZWwKPiAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
