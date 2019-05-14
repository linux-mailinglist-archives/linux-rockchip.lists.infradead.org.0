Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05DBE1D13D
	for <lists+linux-rockchip@lfdr.de>; Tue, 14 May 2019 23:23:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wHiBoCNDx0ZaAtxUDzx2fOWrI/BzaWjQOYjVNkGgCBs=; b=KR5gBtR505riXC
	hkIiHYJtAen3fm0rmVhlr3h/PBI3gKYl/mQ3Ln8y0DGqlHOy2H980zlnTlEHNGt+yRJKaOqQA9UXG
	geiNoetkHXn6m69c/DTtBWBl904Zt4l9PhiC5ZCb1ZF90olKIOyVJMPcpu1O18pkALsyHgr7JIn6D
	CRm8tU2k+VgEFP5W1l3bYRcMy/KjV6LBFX3Jmci37UdgLTb18n3Ri7DK8qRXSrVtk2iJnc4IfbpTH
	Js/FVhucaVdqgSwALrOdRDMGhjRGQiXhfG7DtaR3Tsdc0dsxl8WZlx79S/NRVRXncBI66AaZWdGv4
	9dbdAoIT2a2IvPs1F6ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQetY-0002cP-QL; Tue, 14 May 2019 21:23:32 +0000
Received: from mail-vs1-xe41.google.com ([2607:f8b0:4864:20::e41])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQetV-0002S3-Ki
 for linux-rockchip@lists.infradead.org; Tue, 14 May 2019 21:23:31 +0000
Received: by mail-vs1-xe41.google.com with SMTP id e2so269279vsc.13
 for <linux-rockchip@lists.infradead.org>; Tue, 14 May 2019 14:23:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dw+3HW+QSxAU/VvQDboCS3fVZdfPTxjPbs+h6/3sd+A=;
 b=deslrq0xnkp+HiwTLf6+bMQ8aHWO2dn5MkZXFgTGxSoORKcjrUuEt2bZ7DGXJynfMM
 eQZ8XqI7jWBTUb4dglizDEpU3jfOFkzBTEEpewbpBS3K5z+yIUGnrmy3mT0yU5O6gkqU
 7QSXH/Ul6ZYL85iJ3tmF5EHFKP0/OgMEIx178=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dw+3HW+QSxAU/VvQDboCS3fVZdfPTxjPbs+h6/3sd+A=;
 b=pilmh/d70ACgHIU1hgPtwS/J9fw/edJ6nHPfvjT0POdQSOamFMM5zKy34lmN7Yi7Fb
 fQhHjG8vX8aTJVhMFzL3+GYDh95SR74obtXWy5LbFe8Qqprcy019b76Wc7v/HslBN8vM
 vMhPNC2CpGuWyrhPvro7eC3Ij/3CFdfZRwgPHY6WOIeCXXOa5Odw8yc3CyQc64g4RqU6
 Z9k+MGvPiI4qSTiUoPq5c7c9VRp/YyiPuaurIP2EVDfI0ivWuR3BH/6kk1JYGzihDvrO
 FnlhbJyF2IE+Ttqn3O8JhpoRkaG37l65CyRa7YBjrL+Q69XFrUzry7kRxHd4yqpmRllc
 95KA==
X-Gm-Message-State: APjAAAXFwNAWNvw3MrURaiT+dL4Fi5Itahb0iS2pCpWktA7glqNkwqCO
 yNSSySu4QGK2Ot1dT2q58x+4wR38i2w=
X-Google-Smtp-Source: APXvYqxaCIRPG+kkH/yIrfvANJsREetmBolEYoNI5rO7N0wBW+csQ0ihIM7T2v9nIhym+giURsK66w==
X-Received: by 2002:a67:ee4f:: with SMTP id g15mr8201785vsp.38.1557869007428; 
 Tue, 14 May 2019 14:23:27 -0700 (PDT)
Received: from mail-vs1-f45.google.com (mail-vs1-f45.google.com.
 [209.85.217.45])
 by smtp.gmail.com with ESMTPSA id n68sm25924vkd.0.2019.05.14.14.23.26
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Tue, 14 May 2019 14:23:26 -0700 (PDT)
Received: by mail-vs1-f45.google.com with SMTP id q64so310614vsd.1
 for <linux-rockchip@lists.infradead.org>; Tue, 14 May 2019 14:23:26 -0700 (PDT)
X-Received: by 2002:a67:f60b:: with SMTP id k11mr11031915vso.111.1557869006026; 
 Tue, 14 May 2019 14:23:26 -0700 (PDT)
MIME-Version: 1.0
References: <20190514183935.143463-1-dianders@chromium.org>
 <20190514183935.143463-2-dianders@chromium.org>
 <CABXOdTc36r7XV-3o8MJiaUTkaALtfQAQpi1gV2xvsDSX+S3s2A@mail.gmail.com>
In-Reply-To: <CABXOdTc36r7XV-3o8MJiaUTkaALtfQAQpi1gV2xvsDSX+S3s2A@mail.gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Tue, 14 May 2019 14:23:13 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WrxeKGNH6jsuvdDaENQDnqjW2f2VO25-VReYKfP7L3Lw@mail.gmail.com>
Message-ID: <CAD=FV=WrxeKGNH6jsuvdDaENQDnqjW2f2VO25-VReYKfP7L3Lw@mail.gmail.com>
Subject: Re: [PATCH v3 1/3] platform/chrome: cros_ec_spi: Move to real time
 priority for transfers
To: Guenter Roeck <groeck@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_142329_707991_FEAEB32D 
X-CRM114-Status: GOOD (  15.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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

Hi,

On Tue, May 14, 2019 at 12:34 PM Guenter Roeck <groeck@google.com> wrote:

> On Tue, May 14, 2019 at 11:40 AM Douglas Anderson <dianders@chromium.org> wrote:
> > +static void cros_ec_spi_high_pri_release(struct device *dev, void *res)
> > +{
> > +       struct cros_ec_spi *ec_spi = *(struct cros_ec_spi **)res;
> > +
> > +       kthread_stop(ec_spi->high_pri_thread);
>
> Is that needed ? kthread_destroy_worker() does it for you.

Thanks for catching.  Removed.


> > +static int cros_ec_spi_devm_high_pri_alloc(struct device *dev,
> > +                                          struct cros_ec_spi *ec_spi)
> > +{
> > +       struct sched_param sched_priority = {
> > +               .sched_priority = MAX_RT_PRIO - 1,
> > +       };
> > +       struct cros_ec_spi **ptr;
> > +       int err = 0;
> > +
> > +       ptr = devres_alloc(cros_ec_spi_high_pri_release, sizeof(*ptr),
> > +                          GFP_KERNEL);
> > +       if (!ptr)
> > +               return -ENOMEM;
> > +       *ptr = ec_spi;
> > +
> > +       kthread_init_worker(&ec_spi->high_pri_worker);
> > +       ec_spi->high_pri_thread = kthread_create(kthread_worker_fn,
> > +                                                &ec_spi->high_pri_worker,
> > +                                                "cros_ec_spi_high_pri");
> > +       if (IS_ERR(ec_spi->high_pri_thread)) {
> > +               err = PTR_ERR(ec_spi->high_pri_thread);
> > +               dev_err(dev, "Can't create cros_ec high pri thread: %d\n", err);
> > +               goto err_worker_initted;
> > +       }
> > +
> > +       err = sched_setscheduler_nocheck(ec_spi->high_pri_thread,
> > +                                        SCHED_FIFO, &sched_priority);
> > +       if (err) {
> > +               dev_err(dev, "Can't set cros_ec high pri priority: %d\n", err);
> > +               goto err_thread_created;
> > +       }
> > +
> > +       wake_up_process(ec_spi->high_pri_thread);
> > +
> > +       devres_add(dev, ptr);
> > +
>
> If you move that ahead of sched_setscheduler_nocheck(), you would not
> need the err_thread_created: label.

Done


> > +       return 0;
> > +
> > +err_thread_created:
> > +       kthread_stop(ec_spi->high_pri_thread);
> > +
> > +err_worker_initted:
> > +       kthread_destroy_worker(&ec_spi->high_pri_worker);
>
> Are you sure about this ? The worker isn't started here, but
> kthread_destroy_worker() tries to stop it.

Right.  I was naively thinking that kthread_destroy_worker() was the
inverse of kthread_init_worker(), but clearly it's not.  :(

...and, in fact, looking closer at kthread_destroy_worker() it looks
like it's inherently slightly racy with regards to kthread_create().
Ick.  Specifically it will give a "WARN_ON" if worker->task hasn't
been set, but that doesn't get set until kthread_worker_fn runs the
first time.  Oh, but everyone's supposed to use
kthread_create_worker() to get around that!  :-)  Switching to that.
...and then of course everything looks so much cleaner!

...so after that I'm effectively implementing
devm_kthread_create_worker(), but I guess for now I'll just do that
unless someone thinks that I should try to get that landed...


I'll wait to send out a v4 till tomorrow morning to avoid spamming
with too many versions.  If anyone wants a preview feel free to look
at <https://crrev.com/c/1612165>

-Doug

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
