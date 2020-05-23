Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C53A51DFADB
	for <lists+linux-rockchip@lfdr.de>; Sat, 23 May 2020 22:01:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vkFFJSRfyg6A5uZMtD3+0F7J7gHcT/0c9ydELOv6O8E=; b=TFKOrPnqZSjT6l
	wdXSppX6qB6WLJRkz0QO5nDG2/8cqLt8cf2bfVnxpS7JPvHfvs1Hp14vJTaTMj+9xOe+35fLC/G6r
	g3R7SPZ9vxOhrAvWoU1MG8mM9+Uo+kqM8NeJVqA5twiqGahx+NzUMIya5tYbLieYzir3czTQp6aEN
	w0L0tsSTbFSt8xdFit8IUvIcrXzroooNdsv5H1g92tdsmVZYXN3pP+RzZAm9QIIdbCcQ5KU/nSLea
	AE2c4CIyNypHCa5K4fAqhHV3URR5CwxTFeiJm+5kkF8xdZMVsZZwaZJEtacBy6Spwn11TCCzXSMDg
	Ed5q28VG5q5t/CQfw8qQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcaL9-00017G-G6; Sat, 23 May 2020 20:01:51 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcaKx-00010B-Vn
 for linux-rockchip@lists.infradead.org; Sat, 23 May 2020 20:01:41 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1jcaKt-0007U9-AD; Sat, 23 May 2020 22:01:35 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1jcaKj-0002Ig-7H; Sat, 23 May 2020 22:01:25 +0200
Date: Sat, 23 May 2020 22:01:25 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: David Wu <david.wu@rock-chips.com>
Subject: Re: [PATCH] pwm: rockchip: simplify rockchip_pwm_get_state()
Message-ID: <20200523200125.khdw3eau5eakxqy6@pengutronix.de>
References: <20190919091728.24756-1-linux@rasmusvillemoes.dk>
 <20190919111115.5oraof2bdl4627xv@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190919111115.5oraof2bdl4627xv@pengutronix.de>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200523_130140_022914_F5B571A8 
X-CRM114-Status: GOOD (  15.80  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
 Rasmus Villemoes <linux@rasmusvillemoes.dk>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Thierry Reding <thierry.reding@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hello David,

On Thu, Sep 19, 2019 at 01:11:15PM +0200, oUwe Kleine-K=F6nig wrote:
> On Thu, Sep 19, 2019 at 11:17:27AM +0200, Rasmus Villemoes wrote:
> > The way state->enabled is computed is rather convoluted and hard to
> > read - both branches of the if() actually do the exact same thing. So
> > remove the if(), and further simplify "<boolean condition> ? true :
> > false" to "<boolean condition>".
> > =

> > Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
> > ---
> > I stumbled on this while trying to understand how the pwm subsystem
> > works. This patch is a semantic no-op, but it's also possible that,
> > say, the first branch simply contains a "double negative" so either
> > the !=3D should be =3D=3D or the "false : true" should be "true : false=
".
> =

> The change looks obviously right, it's a noop.
> =

> I share your doubts however. The construct was introduced in commit =

> 831b2790507b ("pwm: rockchip: Use same PWM ops for each IP") by David
> Wu.
> =

> Before there were rockchip_pwm_get_state_v1 for the supports_polarity =3D
> false case and rockchip_pwm_get_state_v2 for supports_polarity =3D true.
> =

> In both state->enabled was assigned true if ((val & enable_conf) =3D=3D
> enable_conf). So I assume everything is fine.
> =

> A confirmation by David would be great though.

This is still open. Can you please have a look at
https://patchwork.ozlabs.org/project/linux-pwm/patch/20190919091728.24756-1=
-linux@rasmusvillemoes.dk/
and verify it's correct?

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
