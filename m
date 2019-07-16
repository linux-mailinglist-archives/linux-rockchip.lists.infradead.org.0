Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 495B16A989
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 15:22:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9k+wOMs9kpBAz4JDXu7cW/q5DhISFtGCEGpL2V57RKE=; b=CrBOhQTCpcGyUn6FV9B1L8oCX
	Fmq13h/8yxl6/NDqBOuQON5fb9C+ohuhRh5KRxr6znjIVhFcoVis8R0o+Mhg0c0patgMON5DOZH5W
	ibjWOUDob0iUa3rb5pD98uthoVk8RcKQ7qR0IsyMJ1wth7e8moS166GA9tJ4lxptwXo08Skph7OWz
	WpoKmcP44EOqiK70poB5DpXv+4lFkXB+6xshKE9gQHwBbifUhIE6eRHI7ViR7/sQVZ7AgO6+OXbDD
	IK67P2RMjkN6DfvJKFx0yu/DUUE9HRuPg5aotbSpJ5ptuO5uVfxCcEVwh989rVReUlnEy1nNakqnG
	KR2xa/+/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnNPi-0006Ig-E4; Tue, 16 Jul 2019 13:22:38 +0000
Received: from regular1.263xmail.com ([211.150.70.198])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnNPf-0006I5-Uu
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 13:22:37 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.165.141])
 by regular1.263xmail.com (Postfix) with ESMTP id DBB9F252;
 Tue, 16 Jul 2019 21:22:33 +0800 (CST)
X-263anti-spam: KSV:0;BIG:0;
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-KSVirus-check: 0
X-ADDR-CHECKED4: 1
X-ABS-CHECKED: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from [192.168.60.65] (unknown [103.29.142.67])
 by smtp.263.net (postfix) whith ESMTP id
 P28302T140710055487232S1563283342404104_; 
 Tue, 16 Jul 2019 21:22:31 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <2d88c3a29dbbc43efe478cc1df6ca8d7>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v3 57/57] rockchip: dts: rk3399: rock-pi-4: Use LPDDR4-100
 dtsi
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 YouMin Chen <cym@rock-chips.com>, u-boot@lists.denx.de
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
 <20190716115745.12585-58-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <6cde8764-ca5d-f256-333c-44d58080e6c7@rock-chips.com>
Date: Tue, 16 Jul 2019 21:22:23 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190716115745.12585-58-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_062236_182161_11985CEC 
X-CRM114-Status: GOOD (  11.61  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.198 listed in list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

Ck9uIDIwMTkvNy8xNiDkuIvljYg3OjU3LCBKYWdhbiBUZWtpIHdyb3RlOgo+IFVzZSBMUEREUjQt
MTAwIHNkcmFtIHRpbWluZ3MgZHRzaSBmb3IgUm9ja1BJLTQgYm9hcmQuCj4KPiBBbGwgdGhlc2Ug
dGltaW5ncyBhcmUgcHJvY2Vzc2VkIGR1cmluZyBUUEwgc3RhZ2Ugb2Ygcm9jay1waS00IGJvYXJk
LAo+IGJvb3RjaGFpbi4gVGhpcyBtYWtlIFRQTCB3b3VsZCByZXBsYWNlIHJvY2tjaGlwIGluIGhv
dXNlIHJrYmluIGluCj4gY3VycmVudCBib290Y2hhaW4uCj4KPiBCb290Y2hhaW4gYWZ0ZXIgYW5k
IGJlZm9yZSB0aGlzIGNoYW5nZToKPgo+ICAgICBUUEwgLT4gU1BMIC0+IFUtQm9vdCBwcm9wZXIK
Pgo+ICAgcmtiaW4gLT4gU1BMIC0+IFUtQm9vdCBwcm9wZXIKPgo+IFNpZ25lZC1vZmYtYnk6IEph
Z2FuIFRla2kgPGphZ2FuQGFtYXJ1bGFzb2x1dGlvbnMuY29tPgoKUmV2aWV3ZWQtYnk6IEtldmVy
IFlhbmcgPEtldmVyLnlhbmdAcm9jay1jaGlwcy5jb20+CgpUaGFua3MsCiDCoC0gS2V2ZXIKPiAt
LS0KPiAgIGFyY2gvYXJtL2R0cy9yazMzOTktcm9jay1waS00LXUtYm9vdC5kdHNpIHwgMSArCj4g
ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKPgo+IGRpZmYgLS1naXQgYS9hcmNoL2Fy
bS9kdHMvcmszMzk5LXJvY2stcGktNC11LWJvb3QuZHRzaSBiL2FyY2gvYXJtL2R0cy9yazMzOTkt
cm9jay1waS00LXUtYm9vdC5kdHNpCj4gaW5kZXggN2JkZGMzYWNkYi4uZGJmYTRiYTlmOCAxMDA2
NDQKPiAtLS0gYS9hcmNoL2FybS9kdHMvcmszMzk5LXJvY2stcGktNC11LWJvb3QuZHRzaQo+ICsr
KyBiL2FyY2gvYXJtL2R0cy9yazMzOTktcm9jay1waS00LXUtYm9vdC5kdHNpCj4gQEAgLTQsMyAr
NCw0IEBACj4gICAgKi8KPiAgIAo+ICAgI2luY2x1ZGUgInJrMzM5OS11LWJvb3QuZHRzaSIKPiAr
I2luY2x1ZGUgInJrMzM5OS1zZHJhbS1scGRkcjQtMTAwLmR0c2kiCgoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
