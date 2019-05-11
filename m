Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E30F81A5C4
	for <lists+linux-rockchip@lfdr.de>; Sat, 11 May 2019 02:24:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o/3eg7fBLEccP6iqqxDkT+I5jDDxJWEFgnu1YdTIaR0=; b=RKvWyp+7RSs4WR
	DanzZdzh4f1sB82U9yDeGLypGrNqum9oy6Uc2cYNypTO+7wVtkBopV2ia+fjaEpZb73Uk4kwouYQq
	BtidE97wzYTukGsFTrtFWZ89RH1kuvsylTaW+IXVCXm5A/njbYGvPV2J6JHND0GBa+CrO7Yez6doP
	Ub+V+xjQ8Yk9WX2aniQaPlA7KEqk9gBa9RPYuukg+URnYU3Qyme1JHumBeFBMtPXhB/N1qrTIMTJu
	gfH6R8Bb3es2T2cPIH/zfRHvuPaTiNMdQfM3dGzJxVogqpcVIACHYQI3JBq6Z2Vwm2KrAHuXAl6M8
	JMQwtB3C5IugpZMyv9SQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPFoM-0001tG-Ky; Sat, 11 May 2019 00:24:22 +0000
Received: from mail-yw1-xc42.google.com ([2607:f8b0:4864:20::c42])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPFoJ-0001sO-Es
 for linux-rockchip@lists.infradead.org; Sat, 11 May 2019 00:24:20 +0000
Received: by mail-yw1-xc42.google.com with SMTP id n76so6140958ywd.1
 for <linux-rockchip@lists.infradead.org>; Fri, 10 May 2019 17:24:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=JodsC5+xYkGlp3C/I+zaQDr/2QyhiDeAmLITr9vbezE=;
 b=cfj39WapNqsIpg4SRPEiKdu6YVkoIDrti4Loe/BNhVHWrN8pYYUaUijnAd3194jYps
 KXpagcxbsXgKX/pFnmi2ulMJv2zBUzn4SEJxgQKvVI2ND6dKTavEnWDXKgcjo7r3OZu1
 i2at/NxJebvdBcPRxR4tT1JrjXRcsm/vGv31X55e/J0Iq9qsy9Wv5jG2I1qtPghJpq8W
 rvk04dQTARXwc6JwcIlIcAlSuZ6/B6aXmT7F+t4nbAflpc7VhdaD2Im/P3C7tvNjLwWq
 GkUukhXU+VMXHBZm7C1k1Npn8/+hIky761Jy37yURog/C9zC7H23zHOZz8X7GNuKnVrn
 K5FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=JodsC5+xYkGlp3C/I+zaQDr/2QyhiDeAmLITr9vbezE=;
 b=T5J2t15u+JTAN98xkySPF3/BcpD7wWp8pJnUawTItgHdaN7JJ0xCddqv6JK4Fm7HuB
 NLe6hOz1xS9QQO9ysDmSaehzLFSZR4VGA9yie1lVUcRJ5Obm2R6UviKkRprUKMcn+wL5
 KaYDbnFSdSEjQOT/4zs16RMmXI+qxn2PFUM9785/xKz/YBTaobFXxzx27TDO0bn+J/+s
 R16ZJdiiW6BmAbjXQyIQqUg71Rh/9RYC9eMCzmDnNzC322yllqorw3Uaq8rdo4m+0k4J
 L4HBmvx6tsBCFSuxXUSxTFe+P6QSnDNE2ECnd39aOyBk0mmmliMWfA8dQ6h/P0yQ8roU
 bAKQ==
X-Gm-Message-State: APjAAAX7vhihxGP1fG8WsGZpl3hhhocEEE3fSUzOK4To4MVEazcxpzVw
 KjU5bhlIsX3tdyn8AjteNo6zo1JbooudiyjCBI6hUg==
X-Google-Smtp-Source: APXvYqxIsnyr4AxG2P4l7F9uO+kKc2KESM8Mvpv3iM6Jd8o8YMDiHtgcYyJoCntlXH20KOsKArfOPXXaURMw0bPKCqg=
X-Received: by 2002:a81:5a0b:: with SMTP id o11mr6996411ywb.444.1557534253549; 
 Fri, 10 May 2019 17:24:13 -0700 (PDT)
MIME-Version: 1.0
References: <20190510223437.84368-1-dianders@chromium.org>
 <20190510223437.84368-2-dianders@chromium.org>
In-Reply-To: <20190510223437.84368-2-dianders@chromium.org>
From: Guenter Roeck <groeck@google.com>
Date: Fri, 10 May 2019 17:24:02 -0700
Message-ID: <CABXOdTfaei3A8VN_-v_BvOKJD7=GPfO7pPCMY+2duOxH4FoZvA@mail.gmail.com>
Subject: Re: [PATCH 1/4] spi: For controllers that need realtime always use
 the pump thread
To: Douglas Anderson <dianders@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_172419_522906_1C2AAB7C 
X-CRM114-Status: GOOD (  15.10  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c42 listed in]
 [list.dnswl.org]
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match 0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
 linux-kernel <linux-kernel@vger.kernel.org>, linux-spi@vger.kernel.org,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Mark Brown <broonie@kernel.org>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Guenter Roeck <groeck@chromium.org>, Benson Leung <bleung@chromium.org>,
 Matthias Kaehlcke <mka@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

From: Douglas Anderson <dianders@chromium.org>
Date: Fri, May 10, 2019 at 3:35 PM
To: Mark Brown, Benson Leung, Enric Balletbo i Serra
Cc: <linux-rockchip@lists.infradead.org>, <drinkcat@chromium.org>,
Guenter Roeck, <briannorris@chromium.org>, <mka@chromium.org>, Douglas
Anderson, <linux-kernel@vger.kernel.org>, <linux-spi@vger.kernel.org>

> If a controller specifies that it needs high priority for sending
> messages we should always schedule our transfers on the thread.  If we
> don't do this we'll do the transfer in the caller's context which
> might not be very high priority.
>
> Signed-off-by: Douglas Anderson <dianders@chromium.org>

Reviewed-by: Guenter Roeck <groeck@chromium.org>

> ---
>
>  drivers/spi/spi.c | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
> index 8eb7460dd744..0597f7086de3 100644
> --- a/drivers/spi/spi.c
> +++ b/drivers/spi/spi.c
> @@ -1230,8 +1230,11 @@ static void __spi_pump_messages(struct spi_controller *ctlr, bool in_kthread)
>                 return;
>         }
>
> -       /* If another context is idling the device then defer */
> -       if (ctlr->idling) {
> +       /*
> +        * If another context is idling the device then defer.
> +        * If we are high priority then the thread should do the transfer.
> +        */
> +       if (ctlr->idling || (ctlr->rt && !in_kthread)) {
>                 kthread_queue_work(&ctlr->kworker, &ctlr->pump_messages);
>                 spin_unlock_irqrestore(&ctlr->queue_lock, flags);
>                 return;
> --
> 2.21.0.1020.gf2820cf01a-goog
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
