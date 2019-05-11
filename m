Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C64051A5CB
	for <lists+linux-rockchip@lfdr.de>; Sat, 11 May 2019 02:32:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MaBroCPP410CYIoG9QgWxf+I1MCHdsJlbDZW01ZKKqc=; b=UQn3lCppINKQfJ
	OUnCVKG3Tz4hnfcngmJh7iX1kUjk0Bi1uT9bX+dXVGeRDvfmHuf5O5sooCHGMFkivCGWlLS+xippI
	bIiVMzQkBWYABoO6VS4Ux+NHV0KvuAJcNzhvWXL4uVdY09mXAvoqgXQHk+JTpQirtWxMk084vEZtR
	uvShc3SCX5S/CcGFYrv5rtDnUU4WO782HlVul68aW4x1c0VbPgsfBjTTImwQhvd0XP5/sffjzL1tV
	q84Y9yu7c7acVF3EzOlOokvOz+XSe4uzdtOUr6rabwNRrqxkdIkTjdd6vPDUU895ZY9kyKh86PfEJ
	CI+2ZmulNYNqluvZ/iQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPFwG-0004cQ-OZ; Sat, 11 May 2019 00:32:32 +0000
Received: from mail-yw1-xc43.google.com ([2607:f8b0:4864:20::c43])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPFwD-0004bz-Gf
 for linux-rockchip@lists.infradead.org; Sat, 11 May 2019 00:32:30 +0000
Received: by mail-yw1-xc43.google.com with SMTP id a130so6094266ywe.13
 for <linux-rockchip@lists.infradead.org>; Fri, 10 May 2019 17:32:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=LuUfV6oc9nendPRbafedpVvx9wWx/qxMVHBwdbKP9IU=;
 b=SvVJafEc8XWjHqcV6F3Ytpi6e6N6wBQw8267/PzpLV9HM6E4TREBak64uQ7fMIjicH
 74Tm+wdEZ6XDLi9mz6qvAraTjlbqZqJ7+tRh6X1lh9MLZ4tZXVjFSO3cQFpRe8C3mW8B
 jLjLYLBDnpzEudNaAF3QYN9VWv8d319FZrZ6g632/yvlSZSxFXwQFwvHeofgzWubMMJx
 m90uWlYA6Nu3S4vIq1rb5PR9L/g/67SgjR+qbZRrzF/xa+Vag8KNXiTkwN1HKrVrhLVZ
 czuiNKMqs+oV1OBwH8X5mJvOmET8kCpL1Ptsb04BkVUspc03WXuivwSKvFWOuZnOQjzb
 d5JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=LuUfV6oc9nendPRbafedpVvx9wWx/qxMVHBwdbKP9IU=;
 b=FYrYumhpo7XW/6LPAoEWOmYGxm5Kxgi8MWx2GwaPJKrSyf+sKp+Y3/TOQoAdigVK1n
 gC3rpS/SuToJJM/muC2RpEdEmE0FxI/SVFKoHMzulALpEZ8PcR8J79KpxXqpz89AeHbc
 nYG5MJbmwt80PCe/Xm3reORQ3O1CdjKuQS5ywl4Mj2SZ/kgnvQsy2Xgd4RGZKNWqeYf/
 P+DF/V/yA+SLe09avY98TcYKeU89+Do5svXfLAb72dzqIVSBlvpCHJ09IIZcVURe0zpV
 h3q0TubKuc8pNNQtj/cE63OdSJbQgs+nN4HH6ymd1KI3EXkDmDy78aYGwjvCvCe4kcMJ
 zShA==
X-Gm-Message-State: APjAAAXuUkNura2eg6ESryg9LHoe29LfNhHYxKaWSJeFtbs1fY2nbOyJ
 HPVmGxIK2MTA7Nh6WhtedPNuWgSROFBbqaShS8+sVw==
X-Google-Smtp-Source: APXvYqx7pUQf4So8Uie88ffpDitozppQWANhIlXVwvEjEBR/c4zCrrqV+lxoqOpDs5/C8b+d80cTUBFiwFeCACSTHw0=
X-Received: by 2002:a25:830d:: with SMTP id s13mr7932651ybk.63.1557534748097; 
 Fri, 10 May 2019 17:32:28 -0700 (PDT)
MIME-Version: 1.0
References: <20190510223437.84368-1-dianders@chromium.org>
 <20190510223437.84368-4-dianders@chromium.org>
In-Reply-To: <20190510223437.84368-4-dianders@chromium.org>
From: Guenter Roeck <groeck@google.com>
Date: Fri, 10 May 2019 17:32:17 -0700
Message-ID: <CABXOdTdnUdr7+Dm_iOjGKwd6YKaPbXuAgMOL+CbGHeBmWJ3wbA@mail.gmail.com>
Subject: Re: [PATCH 3/4] platform/chrome: cros_ec_spi: Set ourselves as timing
 sensitive
To: Douglas Anderson <dianders@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_173229_563351_B28C8DCC 
X-CRM114-Status: GOOD (  14.85  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c43 listed in]
 [list.dnswl.org]
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

From: Douglas Anderson <dianders@chromium.org>
Date: Fri, May 10, 2019 at 3:35 PM
To: Mark Brown, Benson Leung, Enric Balletbo i Serra
Cc: <linux-rockchip@lists.infradead.org>, <drinkcat@chromium.org>,
Guenter Roeck, <briannorris@chromium.org>, <mka@chromium.org>, Douglas
Anderson, <linux-kernel@vger.kernel.org>

> All currently known ECs in the wild are very sensitive to timing.
> Specifically the ECs are known to drop a transfer if more than 8 ms
> passes from the assertion of the chip select until the transfer
> finishes.
>
> Let's use the new feature introduced in the patch ("spi: Allow SPI
> devices to specify that they are timing sensitive") to specify this
> and increase the success rate of our transfers.
>
> NOTE: if future Chrome OS ECs ever fix themselves to be less sensitive
> then we could consider adding a property (or compatible string) to not
> set this property.  For now we need it across the board.
>
> With this change we can revert the commit 37a186225a0c
> ("platform/chrome: cros_ec_spi: Transfer messages at high priority").
> ...and, in fact, transfers are _even more_ reliable than they were
> with that commit since the SPI framework will use a higher priority
> (realtime) and we no longer lose our priority when we get shunted over
> to the message pumping thread (because we now always get shunted and
> the thread is high priority).
>
> Signed-off-by: Douglas Anderson <dianders@chromium.org>

Reviewed-by: Guenter Roeck <groeck@chromium.org>

> ---
>
>  drivers/platform/chrome/cros_ec_spi.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/platform/chrome/cros_ec_spi.c b/drivers/platform/chrome/cros_ec_spi.c
> index 8e9451720e73..757a115502ec 100644
> --- a/drivers/platform/chrome/cros_ec_spi.c
> +++ b/drivers/platform/chrome/cros_ec_spi.c
> @@ -703,6 +703,7 @@ static int cros_ec_spi_probe(struct spi_device *spi)
>
>         spi->bits_per_word = 8;
>         spi->mode = SPI_MODE_0;
> +       spi->timing_sensitive = true;
>         err = spi_setup(spi);
>         if (err < 0)
>                 return err;
> --
> 2.21.0.1020.gf2820cf01a-goog
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
