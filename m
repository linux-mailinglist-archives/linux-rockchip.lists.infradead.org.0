Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87796B7840
	for <lists+linux-rockchip@lfdr.de>; Thu, 19 Sep 2019 13:11:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xE9Absxrg24bepyXx1+SakO6W0tC7d+b+/G4WKdEBHo=; b=p9dfmzCLSAhiaJ
	IbtndSVPxPuUIYTABVKGsGOCbRmVKuYLv6gWD0vxKY2ua9ESjxATXwg+LxNsxQO3x5zESFxsc1UMY
	VKJUXlWmLHdECJaxqXt1XCzEcNWGX4e/XWyAuT2keWNElimOwsH4JsfBFzKkzTVsM2xg/CPU+ykEw
	9WSM2Rc7tRrEu3vejK26UykGnP8k9zLfgyzsS3ZrALUNE7ikuj6nMSoxaXLnwK9kHbfXUEQfplvPz
	DWAe8WCODGVMBODAjkGJhT2Tz4PA6Yj0j6EI2ul5YrjUce8HAOVmNqHjrHqkvyetIptAsc2drF04h
	CNLgJkc43bdG9VnhAOxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAuLb-0005Ek-DL; Thu, 19 Sep 2019 11:11:39 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAuLJ-00052l-Ve
 for linux-rockchip@lists.infradead.org; Thu, 19 Sep 2019 11:11:23 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1iAuLF-0001IP-5b; Thu, 19 Sep 2019 13:11:17 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1iAuLD-0002qQ-8O; Thu, 19 Sep 2019 13:11:15 +0200
Date: Thu, 19 Sep 2019 13:11:15 +0200
From: oUwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 David Wu <david.wu@rock-chips.com>
Subject: Re: [PATCH] pwm: rockchip: simplify rockchip_pwm_get_state()
Message-ID: <20190919111115.5oraof2bdl4627xv@pengutronix.de>
References: <20190919091728.24756-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190919091728.24756-1-linux@rasmusvillemoes.dk>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_041122_112485_80065A84 
X-CRM114-Status: GOOD (  12.34  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-pwm@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Thierry Reding <thierry.reding@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Thu, Sep 19, 2019 at 11:17:27AM +0200, Rasmus Villemoes wrote:
> The way state->enabled is computed is rather convoluted and hard to
> read - both branches of the if() actually do the exact same thing. So
> remove the if(), and further simplify "<boolean condition> ? true :
> false" to "<boolean condition>".
> =

> Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
> ---
> I stumbled on this while trying to understand how the pwm subsystem
> works. This patch is a semantic no-op, but it's also possible that,
> say, the first branch simply contains a "double negative" so either
> the !=3D should be =3D=3D or the "false : true" should be "true : false".

The change looks obviously right, it's a noop.

I share your doubts however. The construct was introduced in commit =

831b2790507b ("pwm: rockchip: Use same PWM ops for each IP") by David
Wu.

Before there were rockchip_pwm_get_state_v1 for the supports_polarity =3D
false case and rockchip_pwm_get_state_v2 for supports_polarity =3D true.

In both state->enabled was assigned true if ((val & enable_conf) =3D=3D
enable_conf). So I assume everything is fine.

A confirmation by David would be great though.

As a side note: Is there publicly available documentation for this IP?
If a link were added to the driver's header we could check easily
ourselves.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
