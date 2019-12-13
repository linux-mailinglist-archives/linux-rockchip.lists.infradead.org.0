Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2FAB11DC96
	for <lists+linux-rockchip@lfdr.de>; Fri, 13 Dec 2019 04:23:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JextHXOvkOzmqMI4DGuvdiDoyjhuQ+h7T6fwtHppJQ4=; b=Lu+kks5DEI4VCwnDsBPrYftIV
	LQJ+4g5axQZF4Txf6LFcQD+nP7fZ3cBfukt3EIVJFWGb5uVmjbATXO8tmVdtjLbObjqdFEGkZI661
	+KNdvsq4+KmCs86R2/CLpCmVy+MNh3RcUUruHKKEblRls3TDDSCfYUNLKyEpjrZXyg9yptoZtfqSR
	FVwjRChLbzSnFoMqgTGCuxDbxn5lzWA19+v1ML+0YJSrX4fwFy/GfOj/PHAWhI1qu6IdP808cRrSK
	LO8osKNdNozgoTE/kXtz00HZ7kkyKZFqHuOE2VuqZdlOFWFNKql76hLhrA8/kwUo2JoKfolwmlb+y
	44dkNBQSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifbXm-0003gt-Vz; Fri, 13 Dec 2019 03:23:06 +0000
Received: from regular1.263xmail.com ([211.150.70.202])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifbXk-0003gZ-Co
 for linux-rockchip@lists.infradead.org; Fri, 13 Dec 2019 03:23:06 +0000
Received: from localhost (unknown [192.168.167.69])
 by regular1.263xmail.com (Postfix) with ESMTP id 18EE52B8;
 Fri, 13 Dec 2019 11:22:54 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [192.168.60.65] (unknown [103.29.142.67])
 by smtp.263.net (postfix) whith ESMTP id
 P8805T140486939494144S1576207368597654_; 
 Fri, 13 Dec 2019 11:22:53 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <53b5f513ab3dd8d292277d98f6ae4c13>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-rockchip@lists.infradead.org
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: =?UTF-8?B?UmU6IHJrMzMyOC1maXJlZmx5IGRkcjQgdHBsIGluaXTjgJDor7fms6g=?=
 =?UTF-8?B?5oSP77yM6YKu5Lu255SxbGludXgtcm9ja2NoaXAtYm91bmNlcytrZXZlci55YW5n?=
 =?UTF-8?B?PXJvY2stY2hpcHMuY29tQGxpc3RzLmluZnJhZGVhZC5vcmfku6Plj5HjgJE=?=
To: Peter Geis <pgwipeout@gmail.com>, u-boot@lists.denx.de
References: <CAMdYzYpbhAT5EfJv2SuC8GZE3q3juUXCwtbAX8SW9eXiC5AP2g@mail.gmail.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <70b1e484-2909-8296-bbd7-3026bf3b576c@rock-chips.com>
Date: Fri, 13 Dec 2019 11:22:46 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <CAMdYzYpbhAT5EfJv2SuC8GZE3q3juUXCwtbAX8SW9eXiC5AP2g@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_192304_650722_E7F2CB02 
X-CRM114-Status: UNSURE (   9.08  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.202 listed in list.dnswl.org]
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
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SGkgUGV0ZXIsCgpPbiAyMDE5LzEyLzUg5LiK5Y2IMTA6MTksIFBldGVyIEdlaXMgd3JvdGU6Cj4g
R29vZCBFdmVuaW5nLAo+Cj4gSSBhbSB0cnlpbmcgdG8gZ2V0IFRQTC9TUEwgd29ya2luZyBvbiB0
aGUgcmszMzI4LWZpcmVmbHkgZGRyNCA0Z2IgYm9hcmQuCj4gSSd2ZSBwdWxsZWQgdGhlIGRkcjQg
ZHRzaSBmcm9tIHRoZSByb2NrY2hpcCB1LWJvb3QgcmVwb3NpdG9yeSBbMF0uCj4KPiBVbmZvcnR1
bmF0ZWx5IEkgY2Fubm90IGdldCB0aGUgZGRyNCB0byBkZXRlY3QgY29ycmVjdGx5LgoKClllcywg
dGhlIGRkcjQgc3VwcG9ydCBmb3IgcmszMzI4IGlzIG1pc3Npbmcgbm93LCB3ZSB3aWxsIHVwZGF0
ZSBpdCBzb21lIAp0aW1lIGxhdGVyLgoKClRoYW5rcywKCi0gS2V2ZXIKCj4KPiBXaXRoIHRoZSB1
LWJvb3QgdHBsLCBJIGdldCB0aGUgZm9sbG93aW5nOgo+IFUtQm9vdCBUUEwgMjAyMC4wMS1yYzMt
MDAwNzItZzFhMWJlYTgyYjItZGlydHkgKERlYyAwNCAyMDE5IC0gMDg6MzM6NTQpCj4gZGF0YSB0
cmFpbmluZyBlcnJvcgo+IHJvdyBlcnJvcmRhdGEgdHJhaW5pbmcgZXJyb3IKPiBERFI0LCAzMzNN
SHoKPiBCVz0xNiBDb2w9MTAgQms9NCBCRz0yIENTMCBSb3c9MTcgQ1M9MSBEaWUgQlc9MTYgU2l6
ZT0yMDQ4TUIKPgo+IFdpdGggdGhlIHJrMzMyOF9kZHJfMzMzTUh6X3YxLjE2LmJpbiwgSSBnZXQg
dGhlIGZvbGxvd2luZzoKPiBERFIgdmVyc2lvbiAxLjE2IDIwMTkwNTI4Cj4gSUQ6MHg4MDUgTgo+
IEluCj4gRERSNAo+IDMzM01Iego+IEJ1cyBXaWR0aD0zMiBDb2w9MTAgQmFuaz00IEJhbmsgR3Jv
dXA9MiBSb3c9MTYvMTYgQ1M9MiBEaWUKPiBCdXMtV2lkdGg9MTYgU2l6ZT00MDk2TUIKPiBkZHJj
b25maWc6MTkKPiBPVVQKPgo+IFswXSBodHRwczovL2dpdGh1Yi5jb20vcm9ja2NoaXAtbGludXgv
dS1ib290L2Jsb2IvbmV4dC1kZXYvYXJjaC9hcm0vZHRzL3JrMzMyOC1zZHJhbS1kZHI0LTY2Ni5k
dHNpCj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+
IExpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdAo+IExpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKPiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCj4KPgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXJvY2tjaGlwCg==
