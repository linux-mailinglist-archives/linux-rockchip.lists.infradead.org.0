Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 257691F910
	for <lists+linux-rockchip@lfdr.de>; Wed, 15 May 2019 19:02:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kB7xOI9uUduz5VZBGLjJhuurFP3i4JOpZ1EdAj8t7jg=; b=ZebZawFUgLA+RM
	LacgReIIfYEhIiUMEJToCuikFF+5A4wsnJN+t8AekuQ7gUB9VVKAbGD79vTg19VvxsUBoc+Fgydll
	QnDU0pVGizmT3zxvySNUU+4Rz1kTyU+2QZ+pCpkwQ97Kd4nF3osHNcm2DnpDBmccO++NZDada/1vF
	FdC3lWFrxBMvy/lbsn27tw8as8rCRj9dwOru2Ondzn7MsLODnKne6kZvKros2MuRpKg1ezwL875zo
	VN6Xqauc1p535UJxsFioOdArN8Ca1tcxsk6RDahOgLQ1oJLLGKbpuzh+SLJ649532Q16TNE0i7Oti
	Et490jz+Byn4NwYDsc7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQxIU-0000Fu-Or; Wed, 15 May 2019 17:02:30 +0000
Received: from mail-yb1-xb43.google.com ([2607:f8b0:4864:20::b43])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQxIR-0000FE-39
 for linux-rockchip@lists.infradead.org; Wed, 15 May 2019 17:02:28 +0000
Received: by mail-yb1-xb43.google.com with SMTP id a13so114699ybm.5
 for <linux-rockchip@lists.infradead.org>; Wed, 15 May 2019 10:02:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=lgKKSA6QWnKM9w2WATnSBKQOf8B+4H5QEt42dEz2xX8=;
 b=ZNzotIbOROqejpCSG4RO3XsEMuNhgoglYkyfg+sXCHaOY++9NiPwk9mwkVfPrG6Czz
 redeLLRyaI28QeV/1tCfU1FVqqePbpe7/sjFi1sm4qWWfy2LJA6wL2HV+qlBJSATsFhw
 fm8aYKkAFmGsvQ07CAxJoAdjnSGIQhWdFu9vaOYVPfuoapCW3TRRnum1Jm4dfGdUvV3R
 BzvVZP8vWkzGmsZZnSrd9LWpAaN2n1FyDTy/Ce0XA9/zszr1PsRWO4ypHQdm8x4VcWI7
 eyCECA6U24VueLwdwa6FtZe3L91RURsUhUdTnbmcnnolQToG8O52UVNZfl/OYFp+68Db
 aYMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=lgKKSA6QWnKM9w2WATnSBKQOf8B+4H5QEt42dEz2xX8=;
 b=KMYdS1aC6uhcmpHPL5CYgLIIwqErtD9THXpsAQV+R19ZSGQT8paMM+Hl5PLf7hAx6S
 8ekJ3metgR6+XRTeX1Z08nns9olMvvVYrOW7sqerFHHhH1HMj4PgDhiL4hyi4u5dTHdJ
 TAjkyMhaq+t0HWohBMB5H4Sj1NWM6lCxAAJOkgXWfaGsxUndTslMwcJJxfyg88hTrWTl
 CTdSgM9/G4OzKL7ra0q+iIM9VWuJR0mEeQWTiJw1PmP1u23sIjshdHj4p4BvutnwWTzc
 BvnRXZ4NlBhKzkbbB5lOKu1myEJk66rkdv661dqaXd1Dvz9iyN3qxSZB4zr/yYEw23Ul
 34TQ==
X-Gm-Message-State: APjAAAUdZA1yVtqDV6ZXn3Y9+yU+gDek1+C2K3R/ZSl5Wx0dD4v84mbY
 pk/RMMr/okH1gjkTDDRawcdT2NkA7Wh+L9snRY/nhQ==
X-Google-Smtp-Source: APXvYqyvi3/cNTCrSEjs52nlUKK5ZUZFTaLrz2SiGqE+m+tY4GI87XGdh18E8bLpxD90eqafcq4aZQ4QD57otGWBXag=
X-Received: by 2002:a5b:887:: with SMTP id e7mr20208062ybq.414.1557939745588; 
 Wed, 15 May 2019 10:02:25 -0700 (PDT)
MIME-Version: 1.0
References: <20190515164814.258898-1-dianders@chromium.org>
 <20190515164814.258898-2-dianders@chromium.org>
In-Reply-To: <20190515164814.258898-2-dianders@chromium.org>
From: Guenter Roeck <groeck@google.com>
Date: Wed, 15 May 2019 10:02:12 -0700
Message-ID: <CABXOdTeCtwFSOvHbBTaSqjv0+rzfbc2mVm=PjtZgid_xRAwwtA@mail.gmail.com>
Subject: Re: [PATCH v4 1/3] platform/chrome: cros_ec_spi: Move to real time
 priority for transfers
To: Douglas Anderson <dianders@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_100227_161287_E1D88913 
X-CRM114-Status: GOOD (  18.45  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b43 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.21
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
Cc: Nicolas Boichat <drinkcat@chromium.org>,
 Brian Norris <briannorris@chromium.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Mark Brown <broonie@kernel.org>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Guenter Roeck <groeck@chromium.org>, Benson Leung <bleung@chromium.org>,
 Matthias Kaehlcke <mka@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Wed, May 15, 2019 at 9:48 AM Douglas Anderson <dianders@chromium.org> wrote:
>
> In commit 37a186225a0c ("platform/chrome: cros_ec_spi: Transfer
> messages at high priority") we moved transfers to a high priority
> workqueue.  This helped make them much more reliable.
>
> ...but, we still saw failures.
>
> We were actually finding ourselves competing for time with dm-crypt
> which also scheduled work on HIGHPRI workqueues.  While we can
> consider reverting the change that made dm-crypt run its work at
> HIGHPRI, the argument in commit a1b89132dc4f ("dm crypt: use
> WQ_HIGHPRI for the IO and crypt workqueues") is somewhat compelling.
> It does make sense for IO to be scheduled at a priority that's higher
> than the default user priority.  It also turns out that dm-crypt isn't
> alone in using high priority like this.  loop_prepare_queue() does
> something similar for loopback devices.
>
> Looking in more detail, it can be seen that the high priority
> workqueue isn't actually that high of a priority.  It runs at MIN_NICE
> which is _fairly_ high priority but still below all real time
> priority.
>
> Should we move cros_ec_spi to real time priority to fix our problems,
> or is this just escalating a priority war?  I'll argue here that
> cros_ec_spi _does_ belong at real time priority.  Specifically
> cros_ec_spi actually needs to run quickly for correctness.  As I
> understand this is exactly what real time priority is for.
>
> There currently doesn't appear to be any way to use the standard
> workqueue APIs with a real time priority, so we'll switch over to
> using using a kthread worker.  We'll match the priority that the SPI
> core uses when it wants to do things on a realtime thread and just use
> "MAX_RT_PRIO - 1".
>
> This commit plus the patch ("platform/chrome: cros_ec_spi: Request the
> SPI thread be realtime") are enough to get communications very close
> to 100% reliable (the only known problem left is when serial console
> is turned on, which isn't something that happens in shipping devices).
> Specifically this test case now passes (tested on rk3288-veyron-jerry):
>
>   dd if=/dev/zero of=/var/log/foo.txt bs=4M count=512&
>   while true; do
>     ectool version > /dev/null;
>   done
>
> It should be noted that "/var/log" is encrypted (and goes through
> dm-crypt) and also passes through a loopback device.
>
> Signed-off-by: Douglas Anderson <dianders@chromium.org>

Reviewed-by: Guenter Roeck <groeck@chromium.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
