Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 849AE132078
	for <lists+linux-rockchip@lfdr.de>; Tue,  7 Jan 2020 08:29:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kyu6P1BMcfijA9vCe5K2HNg6qKUzh9Q3GHafbpAQl7s=; b=PF/1fIvJ7YI6mtuQpxVVziKRC
	MxWdX60Mz75MUBiQiwUljLCk+1PyktvW1G8LJCzMZZVK7TaOeDqzIwpaSR+ba1fSvWA47haCfwGqP
	Nhu3S0he1bYuYvrt8+jWCzjwHgdfQuGNB5X0DUrjNEp6RwptfmTl9mKjdELe5mhj2jUrA/dEttxC0
	dxd86TkUmj2eUiOScMt1s7dY+5KQznQiBfiS61c955W6SSanuyl7cwVa0/iKaVUoy8TGFJnXvo3bx
	gae8nk1KwFfCKe/4hc1FnMTyijHvuKBNUMp9hRjan/bZbnHch10ypxoGW6ENpg0dH0DtPMY48D88D
	4SFb0UQ1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iojJB-0004Xy-B1; Tue, 07 Jan 2020 07:29:45 +0000
Received: from wp126.webpack.hosteurope.de ([2a01:488:42:1000:50ed:8485::])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iojJ6-0004Wl-IL; Tue, 07 Jan 2020 07:29:42 +0000
Received: from [2003:a:659:3f00:1e6f:65ff:fe31:d1d5]
 (helo=hermes.fivetechno.de); authenticated
 by wp126.webpack.hosteurope.de running ExIM with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 id 1iojIh-00023F-2M; Tue, 07 Jan 2020 08:29:15 +0100
X-Virus-Scanned: by amavisd-new 2.11.1 using newest ClamAV at
 linuxbbg.five-lan.de
Received: from [192.168.34.101] (p5098d998.dip0.t-ipconnect.de
 [80.152.217.152]) (authenticated bits=0)
 by hermes.fivetechno.de (8.15.2/8.14.5/SuSE Linux 0.8) with ESMTPSA id
 0077TENG016760
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NO);
 Tue, 7 Jan 2020 08:29:14 +0100
Subject: Re: [PATCH 2/5] regulator: mp8859: add config option and build entry
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>
References: <20200106211633.2882-1-m.reichl@fivetechno.de>
 <20200106211633.2882-3-m.reichl@fivetechno.de> <6648097.OAGuGJg3er@diego>
From: Markus Reichl <m.reichl@fivetechno.de>
Organization: five technologies GmbH
Message-ID: <4ec799d7-9404-f61d-3db7-446fb8bd45a2@fivetechno.de>
Date: Tue, 7 Jan 2020 08:29:13 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <6648097.OAGuGJg3er@diego>
Content-Language: de-DE
X-bounce-key: webpack.hosteurope.de; m.reichl@fivetechno.de; 1578382180;
 e920a1c7; 
X-HE-SMSGID: 1iojIh-00023F-2M
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_232940_757774_35B4276A 
X-CRM114-Status: GOOD (  10.83  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SGkgSGVpa28sCkFtIDA2LjAxLjIwIHVtIDIyOjIyIHNjaHJpZWIgSGVpa28gU3TDvGJuZXI6Cj4g
QW0gTW9udGFnLCA2LiBKYW51YXIgMjAyMCwgMjI6MTY6MjUgQ0VUIHNjaHJpZWIgTWFya3VzIFJl
aWNobDoKPj4gQWRkIGVudHJpZXMgZm9yIHRoZSBtcDg4NTkgcmVndWxhdG9yIGRyaXZlcgo+PiB0
byB0aGUgYnVpbGQgc3lzdGVtLgo+PiAKPj4gU2lnbmVkLW9mZi1ieTogTWFya3VzIFJlaWNobCA8
bS5yZWljaGxAZml2ZXRlY2huby5kZT4KPiAKPiB0aGlzIHN0aWxsIHNob3VsZCBnZXQgbWVyZ2Vk
IGludG8gcGF0Y2gxIDotKQoKV2lsbCBtZXJnZSB0aGVtIGluIG5leHQgdmVyc2lvbi4KCj4gCj4g
SGVpa28KPiAKPiAKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwo+IExpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdAo+IExpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKPiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCj4gCgpHcnXDnywKLS0gCk1hcmt1cyBSZWljaGwKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
