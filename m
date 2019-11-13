Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12375FB537
	for <lists+linux-rockchip@lfdr.de>; Wed, 13 Nov 2019 17:35:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References:In-Reply-To:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=loAHINXbSGyJ2GsHh+tLQVhhp+kOlpTsF4YaQeulU4k=; b=c0Mnugd70qLY8UAvKBwegfriq
	vjNeZiSKVKoJaQUbjmT0X9ltvZfnmyAK2IfPRc8vtxEyElY+mXSxv1EkVdjZXj1mx6WK0uyePvavA
	tNRJHWjFlGiESMGAKUbq/NogD+kb1jQQxjZ7RgtEPaRXPjis5vzB5XwZnYvXdoJK3lIWoxdV1BvYd
	900QgAED2oTE1mMxbXBvDPiRE7+gdrXw4jiTZGxc3kfupqDurz9kjeQAE3sCZi/LOIgpMZK3oG9qa
	KlRYKEAjDNND6m9p3VYQ1o76eKZDOVY69PfIW/5Euo2+GoWranp8ZP3WXQBmIWz7a7rd3gbbcikpa
	f7UG7AUig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUvc8-0007hC-4P; Wed, 13 Nov 2019 16:35:28 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUvbw-0007YR-Ep; Wed, 13 Nov 2019 16:35:18 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: aratiu) with ESMTPSA id 388EA28E964
From: Adrian Ratiu <adrian.ratiu@collabora.com>
To: Emil Velikov <emil.l.velikov@gmail.com>
Subject: Re: [PATCH v2 1/4] drm: bridge: dw_mipi_dsi: access registers via a
 regmap
In-Reply-To: <CACvgo51sNzSHCcix89giYEq=iGJa_-nYbgpOKY-MxPRGCM_cRQ@mail.gmail.com>
References: <20191106163031.808061-1-adrian.ratiu@collabora.com>
 <20191106163031.808061-2-adrian.ratiu@collabora.com>
 <CACvgo51sNzSHCcix89giYEq=iGJa_-nYbgpOKY-MxPRGCM_cRQ@mail.gmail.com>
Date: Wed, 13 Nov 2019 18:35:30 +0200
Message-ID: <87r22bhgz1.fsf@iwork.i-did-not-set--mail-host-address--so-tickle-me>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_083516_632418_EC034B24 
X-CRM114-Status: GOOD (  12.05  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Neil Armstrong <narmstrong@baylibre.com>, "Linux-Kernel@Vger. Kernel.
 Org" <linux-kernel@vger.kernel.org>,
 ML dri-devel <dri-devel@lists.freedesktop.org>,
 linux-rockchip <linux-rockchip@lists.infradead.org>,
 Boris Brezillon <boris.brezillon@collabora.com>, kernel@collabora.com,
 linux-stm32@st-md-mailman.stormreply.com,
 LAKML <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Wed, 13 Nov 2019, Emil Velikov <emil.l.velikov@gmail.com> 
wrote:
> On Wed, 6 Nov 2019 at 16:30, Adrian Ratiu 
> <adrian.ratiu@collabora.com> wrote: 
>> 
>> Convert the common bridge code and the two rockchip & stm 
>> drivers which currently use it to the regmap API in 
>> anticipation for further changes to make it more generic and 
>> add older DSI host controller support as found on i.mx6 based 
>> devices. 
>> 
>> The regmap becomes an internal state of the bridge. No 
>> functional changes other than requiring the platform drivers to 
>> use the pre-configured regmap supplied by the bridge after its 
>> probe() call instead of ioremp'ing the registers themselves. 
>> 
>> In subsequent commits the bridge will become able to detect the 
>> DSI host core version and init the regmap with different 
>> register layouts. The platform drivers will continue to use the 
>> regmap without modifications or worrying about the specific 
>> layout in use (in other words the layout is abstracted away via 
>> the regmap). 
>> 
>> Suggested-by: Boris Brezillon <boris.brezillon@collabora.com> 
>> Reviewed-by: Neil Armstrong <narmstrong@baylibre.com> 
>> Reviewed-by: Emil Velikov <emil.l.velikov@gmail.com> 
> 
> I should have been clearer earlier - I didn't quite review the 
> patch.  Is is now though.  Reviewed-by: Emil Velikov 
> <emil.velikov@collabora.com>

Sorry about that, I got confused and thought you reviewed it all.
 
> 
> Admittedly a couple of nitpicks (DRIVER_NAME, zero initialize of 
> val) could have been left out.  It's not a big deal, there's no 
> need to polish those.

I'll address them in v3 as well as updating your mail address.

Thanks for reviewing!

>
> -Emil
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
