Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 107C01E04E0
	for <lists+linux-rockchip@lfdr.de>; Mon, 25 May 2020 04:50:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QVhsjKJLFSHtBxEu8heMH1y4vHY5B/35Ufyfllv2BcY=; b=WdP/q8pFL6KeRorGyzm6PZOfJ
	ZK7uF4emufJ59vpnyPJWBJyXiHIZxSqTKMypZjTNoSXcTuACYliec1ZmIufersrwPPkRLmlAYbwDs
	fNWtwFsBRyKL7Ay3Y8Y2BFokCaLAF0+algJGtuBZqcLShHW1avXP2eDwyxAQEHYgnh7aQrKhDE0fF
	ojRKJZu8JzplkNI5WGJi8hJxWu86t294W+gSDCv6jb/RN6aR1eKJsxriC12b5V1+TefG7G8rqj/PX
	md2xh6KnXD6N7BrcLI+gBUY0xxUY4BFR+SCxDitX2OdSwmQeoKDCoA2IWIr77srOylo9eMAuB5bRU
	x0Yegel6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jd3CW-0006a0-EZ; Mon, 25 May 2020 02:50:52 +0000
Received: from regular1.263xmail.com ([211.150.70.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jd3CT-0006ZJ-DK
 for linux-rockchip@lists.infradead.org; Mon, 25 May 2020 02:50:50 +0000
Received: from localhost (unknown [192.168.167.13])
 by regular1.263xmail.com (Postfix) with ESMTP id 67C6AA55;
 Mon, 25 May 2020 10:50:43 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [172.16.12.66] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P25387T140143094654720S1590375041672374_; 
 Mon, 25 May 2020 10:50:43 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <476067eeeac7652eb1cff9571e10eafb>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
X-System-Flag: 0
Subject: Re: [PATCH 1/3] arm64: dts: rk3399-nanopi4: Add u-boot, spl-boot-order
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
References: <20200524173213.201123-1-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <5f9295a6-0654-7f02-faca-c57915540306@rock-chips.com>
Date: Mon, 25 May 2020 10:50:41 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200524173213.201123-1-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_195049_611129_0397A7D5 
X-CRM114-Status: GOOD (  12.47  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.199 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [211.150.70.199 listed in wl.mailspike.net]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: u-boot@lists.denx.de, linux-rockchip@lists.infradead.org,
 linux-amarula@amarulasolutions.com, sunil@amarulasolutions.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Ck9uIDIwMjAvNS8yNSDkuIrljYgxOjMyLCBKYWdhbiBUZWtpIHdyb3RlOgo+IEFkZCB1LWJvb3Qs
c3BsLWJvb3Qtb3JkZXIgYXMgc2RoY2kgYW5kIHNkbW1jIGZvciBib290aW5nCj4gZnJvbSBlTU1D
IGFuZCBTRCBjYXJkLgo+Cj4gU2lnbmVkLW9mZi1ieTogSmFnYW4gVGVraSA8amFnYW5AYW1hcnVs
YXNvbHV0aW9ucy5jb20+CgpSZXZpZXdlZC1ieTogS2V2ZXIgWWFuZyA8a2V2ZXIueWFuZ0Byb2Nr
LWNoaXBzLmNvbT4KClRoYW5rcywKLSBLZXZlcgo+IC0tLQo+ICAgYXJjaC9hcm0vZHRzL3JrMzM5
OS1uYW5vcGk0LXUtYm9vdC5kdHNpIHwgNiArKysrKysKPiAgIDEgZmlsZSBjaGFuZ2VkLCA2IGlu
c2VydGlvbnMoKykKPgo+IGRpZmYgLS1naXQgYS9hcmNoL2FybS9kdHMvcmszMzk5LW5hbm9waTQt
dS1ib290LmR0c2kgYi9hcmNoL2FybS9kdHMvcmszMzk5LW5hbm9waTQtdS1ib290LmR0c2kKPiBp
bmRleCBhMTI2YmJhZjA4Li5hOWQxMDU5MmQ1IDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtL2R0cy9y
azMzOTktbmFub3BpNC11LWJvb3QuZHRzaQo+ICsrKyBiL2FyY2gvYXJtL2R0cy9yazMzOTktbmFu
b3BpNC11LWJvb3QuZHRzaQo+IEBAIC01LDYgKzUsMTIgQEAKPiAgIAo+ICAgI2luY2x1ZGUgInJr
MzM5OS11LWJvb3QuZHRzaSIKPiAgIAo+ICsvewo+ICsJY2hvc2VuIHsKPiArCQl1LWJvb3Qsc3Bs
LWJvb3Qtb3JkZXIgPSAic2FtZS1hcy1zcGwiLCAmc2RoY2ksICZzZG1tYzsKPiArCX07Cj4gK307
Cj4gKwo+ICAgJnNkbW1jIHsKPiAgIAlwaW5jdHJsLTAgPSA8JnNkbW1jX2J1czQgJnNkbW1jX2Ns
ayAmc2RtbWNfY21kICZzZG1tY19jZD47Cj4gICB9OwoKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
