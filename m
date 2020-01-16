Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5E1613D2DA
	for <lists+linux-rockchip@lfdr.de>; Thu, 16 Jan 2020 04:45:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HyHKsEzutjQjg6yMniHT53wNZdc2Ru7eNlPQ3eShPr0=; b=sQDfsecgJ96H2uT43LrTeqszD
	XIJb6/MwVgFSYdoL+zsvOoYlPkQPinpUHMKMzNbaHZNoDg8C11lnkME+WoGg65EPPTyEd3nqVaG2Z
	SdNN6om+oI1niEFjNSRZ0D+UpMkU1ug73w3evyLIQ3t2b+4Z2ZQetcI4jRNX8tyYPrrFJJ+l3wHqq
	vITAObJzEhLEaQotacvWKVVHB1TIgbIJxG7K17DtI6W8aktCFt1jVOZPMeG4KZTHdhIRqE9Y9TWwl
	7piaWgBEYEXnJQrqs2MvbVA23UC5nJ6yJkxe0yF5sOjoBXvL2IylZJvOscxh46EL02X5S7pj7FR63
	JeMfpafEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irw5b-0005fK-AS; Thu, 16 Jan 2020 03:44:59 +0000
Received: from regular1.263xmail.com ([211.150.70.204])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irw5Y-0005eV-4r
 for linux-rockchip@lists.infradead.org; Thu, 16 Jan 2020 03:44:57 +0000
Received: from localhost (unknown [192.168.167.223])
 by regular1.263xmail.com (Postfix) with ESMTP id B32AB25B;
 Thu, 16 Jan 2020 11:44:46 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [172.16.12.9] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P614T140606315673344S1579146284883989_; 
 Thu, 16 Jan 2020 11:44:45 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <c5786d4e514634879cef127dc9caa3a5>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: huangtao@rock-chips.com
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v2] pinctrl/rockchip: splite soc data to separated driver
To: Linus Walleij <linus.walleij@linaro.org>,
 Jianqun Xu <jay.xu@rock-chips.com>, =?UTF-8?Q?Heiko_St=c3=bcbner?=
 <heiko@sntech.de>
References: <20200109094001.24343-1-jay.xu@rock-chips.com>
 <20200113011616.19791-1-jay.xu@rock-chips.com>
 <CACRpkdY_EHQbF4rRyGwoxEk8LeWfmRzmCd=8=SY95LPXMHYOmw@mail.gmail.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <c4ec95a7-aaf1-2331-352f-2def319a1c7d@rock-chips.com>
Date: Thu, 16 Jan 2020 11:44:44 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <CACRpkdY_EHQbF4rRyGwoxEk8LeWfmRzmCd=8=SY95LPXMHYOmw@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_194456_353159_BA55FE00 
X-CRM114-Status: GOOD (  15.34  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.204 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [211.150.70.204 listed in wl.mailspike.net]
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
Cc: Tao Huang <huangtao@rock-chips.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Vagrant Cascadian <vagrant@debian.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Peter Robinson <pbrobinson@gmail.com>, David Wu <david.wu@rock-chips.com>,
 afaerber@suse.de
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Ck9uIDIwMjAvMS8xNSDkuIvljYg4OjUxLCBMaW51cyBXYWxsZWlqIHdyb3RlOgo+IE9uIE1vbiwg
SmFuIDEzLCAyMDIwIGF0IDI6MTYgQU0gSmlhbnF1biBYdSA8amF5Lnh1QHJvY2stY2hpcHMuY29t
PiB3cm90ZToKPgo+PiAqIERlY3JlYXNlIGNvZGVzIG9mIHBpbmN0cmwtcm9ja2NoaXAuYyBmcm9t
IDQsMDAwIGxpbmVzIHRvIDIwMDAgYnkKPj4gc2VwYXJhdGluZyBzb2MgZGF0YSB0byBhIG5ldyBm
aWxlLgo+Pgo+PiAqIE1vdmUgcm9ja2NoaXAgcGluY3RybCByZWxhdGVkIHN0cnVjdCBkZWZpbmF0
aW9ucyB0byBhIGhlYWQgZmlsZS4KPj4KPj4gKiBLZWVwIGxlZ2VuY3kgcGluY3RybC1yb2NrY2hp
cC5jIHVuZGVyIGRyaXZlci9waW5jdHJsIGJ1dCBub3QgdG8KPj4gY29tcGlsZSBpdCwgY29udmVu
aWVudGx5IGZvciByZXZpZXdlcnMuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IEppYW5xdW4gWHUgPGph
eS54dUByb2NrLWNoaXBzLmNvbT4KPiBUaGlzIHBhdGNoIGxvb2tzIGdvb2QsIHR3byB0aGluZ3Mg
YXJlIG1pc3Npbmc6Cj4KPiAtIFJldmlldyBmcm9tIEhlaWtvCj4KPiAtIEEgY2hhbmdlIHRvIE1B
SU5UQUlORVJTIHNvIHRoYXQgdGhlIGZpbGUgcGF0dGVybiBzdGlsbAo+ICAgIG1hdGNoZXMKPgo+
IFNob3VsZCBzb21lb25lIGZyb20gUm9ja2NoaXAgYWxzbyBzaWduIHVwIGFzIGNvbWFpbnRhaW5l
cgo+IGZvciB0aGlzIGRyaXZlciBieSB0aGUgd2F5PyAoVGhvdWdoIHRoZSBwZW9wbGUgYXQgUm9j
a2NoaXAKPiBwb3N0aW5nIHBhdGNoZXMgZm9yIHRoaXMgc2VlbSB0byBjaGFuZ2UgYSBiaXQuKQoK
ClRoZSBrZXJuZWwgSW1hZ2Ugc2l6ZSBpcyBrZWVwIGdyb3dpbmcsIHRoaXMgcGF0Y2ggY2FuIGhl
bHAgcmVkdWNlIHRoZSAKc2l6ZSBvZgoKa2VybmVsIGltYWdlIGZvciBvbmUgU29DLCBhbmQgdGhp
cyBpcyB3aGF0IHdlIGhhdmUgZG9uZSBpbiBVLUJvb3QgbWFpbmxpbmUuCgpBbmQgZm9yIGRpc3Ry
aWJ1dGlvbiBrZXJuZWwgd2hvIG5lZWQgdG8gY292ZXIgYWxsIHRoZSBTb0NzIHdpdGggb25lIApr
ZXJuZWwgaW1hZ2UsCgpuZWVkIHRvIHVwZGF0ZSB0aGUgZGVmY29uZmlnLgoKVGhlIHBhdGNoIGxv
b2tzIGdvb2QgdG8gbWUsCgpSZXZpZXdlZC1ieTogS2V2ZXIgWWFuZyA8a2V2ZXIueWFuZ0Byb2Nr
LWNoaXBzLmNvbT4KClRoYW5rcywKLSBLZXZlcgoKCj4KPiBZb3VycywKPiBMaW51cyBXYWxsZWlq
Cj4KPgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCg==
