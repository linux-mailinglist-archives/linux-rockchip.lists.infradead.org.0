Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19EB5107ECA
	for <lists+linux-rockchip@lfdr.de>; Sat, 23 Nov 2019 15:21:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=iGg7PJnQi9jWkdbuXdkAwNi1Ug+W9seLM4+XtDL4R/c=; b=niktukBMEF3TIEn94QRBos+Ti
	J1X/zYxsDmh4KwUM+wjbnhF9DmCHCMmjXt+Rtr9yYgC/TfDDq2XjjBvQYwLFrY7kjto8psHIXGlzl
	sqwRx1mFoq0v4VFrAaz00btseyL0aWQFBuyI0GKiasdmRMXua++CnKreaW/fSTs/m1XG51scgV0Uc
	mIM8Bqr7kYOLMu0Sn6Z9wLzn5jR8pPpraEPw53TvndROGlW78LRz6pFupQBbOxbvPFD8OX0DkHo7+
	hqJL7tl1g2pmpQvjm+qGfDH3y6m6K4tJFdGacD3nvkzubvVa3CuvLOHVL0Q1B/oULGr/WRtlMFnob
	hV+lHdZ4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYWHy-0003gV-Bc; Sat, 23 Nov 2019 14:21:30 +0000
Received: from regular1.263xmail.com ([211.150.70.204])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYWHv-0003f1-G1
 for linux-rockchip@lists.infradead.org; Sat, 23 Nov 2019 14:21:28 +0000
Received: from localhost (unknown [192.168.167.13])
 by regular1.263xmail.com (Postfix) with ESMTP id C4DB622C;
 Sat, 23 Nov 2019 22:21:24 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 1
Received: from [192.168.0.8] (unknown [112.49.214.198])
 by smtp.263.net (postfix) whith ESMTP id
 P8551T139845362624256S1574518884016959_; 
 Sat, 23 Nov 2019 22:21:25 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <95fcfc2bec47fbaba54a4d0f10922e1f>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 112.49.214.198
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v2 06/10] fastboot: rockchip: Fix rk3328 default mmc device
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
References: <20191119082623.6165-1-jagan@amarulasolutions.com>
 <20191119082623.6165-7-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <00e0c1e1-b6f7-f3b7-d5cb-ece26ed806c7@rock-chips.com>
Date: Sat, 23 Nov 2019 22:21:23 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191119082623.6165-7-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191123_062127_786458_67CAD4AF 
X-CRM114-Status: GOOD (  11.39  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.204 listed in list.dnswl.org]
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
Cc: u-boot@lists.denx.de, Levin Du <djw@t-chip.com.cn>,
 linux-amarula@amarulasolutions.com, linux-rockchip@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Ck9uIDIwMTkvMTEvMTkg5LiL5Y2INDoyNiwgSmFnYW4gVGVraSB3cm90ZToKPiBUZWNobmljYWxs
eSB0aGUgZGVmYXVsdCBtbWMgZGV2aWNlIGZvciBmYXN0Ym9vdCB3b3VsZAo+IHVzZSBlTU1DIGlm
IHRoZSBib2FyZCBzdXBwb3J0IGZvciBpdC4KPgo+IFJvY2tjaGlwIHBsYXRmb3JtIGFjY2VzcyBk
ZXZpY2UgMCBmb3IgZU1NQyBzbywgdXNlIHRoZQo+IHNhbWUgZGV2aWNlIG51bWJlciBmb3Igcmsz
MzI4Lgo+Cj4gU2lnbmVkLW9mZi1ieTogSmFnYW4gVGVraSA8amFnYW5AYW1hcnVsYXNvbHV0aW9u
cy5jb20+CgpSZXZpZXdlZC1ieTogS2V2ZXIgWWFuZyA8a2V2ZXIueWFuZ0Byb2NrLWNoaXBzLmNv
bT4KClRoYW5rcywKLSBLZXZlcgo+IC0tLQo+ICAgZHJpdmVycy9mYXN0Ym9vdC9LY29uZmlnIHwg
MSAtCj4gICAxIGZpbGUgY2hhbmdlZCwgMSBkZWxldGlvbigtKQo+Cj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZmFzdGJvb3QvS2NvbmZpZyBiL2RyaXZlcnMvZmFzdGJvb3QvS2NvbmZpZwo+IGluZGV4
IDM0ODY0Y2E2MTMuLjQzM2VhMGRjM2IgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9mYXN0Ym9vdC9L
Y29uZmlnCj4gKysrIGIvZHJpdmVycy9mYXN0Ym9vdC9LY29uZmlnCj4gQEAgLTg5LDcgKzg5LDYg
QEAgZW5kY2hvaWNlCj4gICBjb25maWcgRkFTVEJPT1RfRkxBU0hfTU1DX0RFVgo+ICAgCWludCAi
RGVmaW5lIEZBU1RCT09UIE1NQyBGTEFTSCBkZWZhdWx0IGRldmljZSIKPiAgIAlkZXBlbmRzIG9u
IEZBU1RCT09UX0ZMQVNIX01NQwo+IC0JZGVmYXVsdCAxIGlmIFJPQ0tDSElQX1JLMzMyOAo+ICAg
CWRlZmF1bHQgMCBpZiBBUkNIX1JPQ0tDSElQCj4gICAJZGVmYXVsdCAwIGlmIEFSQ0hfU1VOWEkg
JiYgTU1DX1NVTlhJX1NMT1RfRVhUUkEgPSAtMQo+ICAgCWRlZmF1bHQgMSBpZiBBUkNIX1NVTlhJ
ICYmIE1NQ19TVU5YSV9TTE9UX0VYVFJBICE9IC0xCgoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51
eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
