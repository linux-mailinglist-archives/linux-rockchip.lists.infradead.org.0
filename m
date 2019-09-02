Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B0D2A5D0B
	for <lists+linux-rockchip@lfdr.de>; Mon,  2 Sep 2019 22:19:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3lJzrjvS/Z/6Tjanm8saxuR9KeGq+Ppf7Vngn8gqQFI=; b=o1sZTFhSPdHmLP
	bEVfPjWtyvbRLxE03ZZEzU3fBO1fA0Gy2OhiUdeFT4sZBjMLVEaRC+OrJYY25KTydiK185pYh6CJq
	PWkk4ivWmBTwlT057Td+Pl7aLbG8uD6tlJtlZ5i+zbJIgAryC1vA5fk7XcIfl9tWScSR/Y7RBpdZy
	xab76lYEA1sq7IhN+am59Vo40pP+9Scb5e9inj/grrNqcRGQrymVOVmaqp++3Pj1uBD0uGZGEmBkt
	T/p15lqT6fCbH9rZc6XbmpOScbOaqtfVlIQjUHMFmIExdX3E/qG0uh+CVyMprqVm/Iitx0QxX84v9
	O1UQ8aaGIhg1H3WN5zrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4snD-00024l-3n; Mon, 02 Sep 2019 20:19:15 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4sn9-00024P-I7
 for linux-rockchip@lists.infradead.org; Mon, 02 Sep 2019 20:19:12 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1i4sn5-0006Mr-0d; Mon, 02 Sep 2019 22:19:07 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1i4sn3-0002eH-TQ; Mon, 02 Sep 2019 22:19:05 +0200
Date: Mon, 2 Sep 2019 22:19:05 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Thierry Reding <thierry.reding@gmail.com>,
 Heiko Stuebner <heiko@sntech.de>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Patrick Havelange <patrick.havelange@essensium.com>
Subject: Re: [PATCH v3 0/6] pwm: ensure pwm_apply_state() doesn't modify the
 state argument
Message-ID: <20190902201905.kyduxnehcjfzitrc@pengutronix.de>
References: <20190824153707.13746-1-uwe@kleine-koenig.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190824153707.13746-1-uwe@kleine-koenig.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_131911_601284_096791C5 
X-CRM114-Status: GOOD (  13.11  )
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
Cc: linux-pwm@vger.kernel.org, kernel@pengutronix.de,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Sat, Aug 24, 2019 at 05:37:01PM +0200, Uwe Kleine-K=F6nig wrote:
> Hello,
> =

> this series eventually changes the prototype of pwm_apply_state to take
> a const struct pwm_state *, see the last patch for a rationale.
> =

> Changes since v2 apart from rebasing and so covering a few more drivers
> is mainly addressing the concern that after state was rounded and
> applied at least pwm_get_state should return the rounded values. See
> patch 2.

I thought a bit on this series and there is a question about it.
Depending on what is considered the right answer for it, this series
might have to change.

The key question is:

  - Is pwm_get_state() supposed to return
    a) the last requested configuration; or
    b) the last actually implemented configuration?

(If the difference is unclear: consider a PWM that can only implement
the following periods:

	1 ms, 2 ms, 3 ms, 4 ms, 5 ms, 6 ms, ...

and a consumer requested 4.2 ms. Should pwm_get_state() return .period =3D 4
ms (assuming this was picked) or 4.2 ms?)

As of v5.3-rc5 it depends on the backend driver. For most of them 4.2 ms
is returned. My series tries to push it to return 4 ms instead. (But
this only works for backends that implement the .get_state() callback.
And it gets more complicated as the drivers are not free of surprises.)

Maybe we need functions for both answers?

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
