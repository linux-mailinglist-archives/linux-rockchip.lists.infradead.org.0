Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E556478808
	for <lists+linux-rockchip@lfdr.de>; Mon, 29 Jul 2019 11:09:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Chci5Ae+ssDyJkanqdtG46rAr5AlJptAzdZXoBJ3qu4=; b=Y4iqw2f6u28BIx
	p+1FGgMr+HYctB6eNtb56CTUEEzZpmb0/x0Hr5brHhIycNttVw3saRKtwE7jOpijipZyPvozFTzNl
	mFjGUQTROcF4AQa3h2xJ1MIEkhDWU730XAKrQ9DkxpfxNMoaox3ETHNxiZ6eMXJFDKT2eYUCVSTwO
	6Y2rDtLRaJPgFMfhBVyk9QdyZUwccCXWU31hripoRqUvxxt1cdJuqzd0ig1wuHu7Wx76pwaolwQod
	mfoMhMT90fa6l0+fGWpCdyboCIMYRG0j6MjMMGi0MGZd+Vr7L99NlLp8lgq7M+kGbEWOVoA/havak
	QRNvhGq/+cr5RpaZcOVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs1fB-0006Ag-Ot; Mon, 29 Jul 2019 09:09:49 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs1f7-00069n-85
 for linux-rockchip@lists.infradead.org; Mon, 29 Jul 2019 09:09:47 +0000
Received: by mail-pf1-x441.google.com with SMTP id 19so27689509pfa.4
 for <linux-rockchip@lists.infradead.org>; Mon, 29 Jul 2019 02:09:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nC6WJ72U7Q8XoS2roTl9F1Qco7AkzALIhlVcR9u5Nu0=;
 b=kILYvtfolcRbuAQtAKiRa81ka3zr9ExzHyQ0gLc0cUZvFTc/pM/mlKQFXHjd05exHJ
 XXE/pmtqf8OWMlbDDcV0H/j63IjLRT+mgM95ltv6PeKlF+Sm1KUX2Eaj3wY6xTEmXwS7
 4pLJhsdKmf6vEzbFi/CpNuDfbOdS6YKLAM8P+FdQn2XQIOuOEIeicjqzPx0J+1LEt7zX
 d+cyjJHtvU9bWePjo8paPRGkXmlDYWDcUQJYJzv4t0AON5H5cXsNl7j87pJ7hUzxtDW5
 ExNi1HWn3pX6gLdZzlAIaubgtlrnhmJCM8sv5s3ngjRkD96VEqVHPvg+7phbTSI67FhB
 KZqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nC6WJ72U7Q8XoS2roTl9F1Qco7AkzALIhlVcR9u5Nu0=;
 b=Zw4doQWnjLsv7dEijUoxJNSgPfsxsvcyPHzMcf+HZVkr9HB2r8CVBUyoiBirZsaIDT
 tZl9hV+6QknS53iDRWjgHdfnCZunU1Uag8/Ll9DvtFTXywtO+mvaDwmLCxpZ/se0+HYp
 gSb3jLLrAnfJF9gd9qI3FSw3C02T1ZSh0VbbZGKXe+716LBQA5Lg/iCOL8VMDZW/dSed
 ieF8e+Ybm7wlUo/E3VMaMqgek0Be3MW6jxtf+Ae1NG+hJTtqcxQ06VpUSkk46ptC1Fa4
 hFHydy5DtHf8C+GVl0oy3BjFEvlfOAav/x8rucA1/sTt9R1GmGWnCXmQ+fVfiGEFVi9i
 l7Lw==
X-Gm-Message-State: APjAAAVWKGy+5qEgRoq1c9QIHBHg0t4dl3E7aGrsmjn7wXJKLtNn/BZ9
 np4bU4C8pg/Bbr0s+8Tngqe6rid7EE4fBxswLyo=
X-Google-Smtp-Source: APXvYqx8AlU+1WHKQVv3IySxiKaP5GMtoZoDEi+1LoofxaQxCCSMOGEuFNdZTZUlrw0LcCkwycUMjb4qPaEGqA7NuN0=
X-Received: by 2002:a63:6eca:: with SMTP id j193mr27730332pgc.74.1564391384145; 
 Mon, 29 Jul 2019 02:09:44 -0700 (PDT)
MIME-Version: 1.0
References: <20190729074711.16988-1-jagan@amarulasolutions.com>
 <20190729074711.16988-9-jagan@amarulasolutions.com>
In-Reply-To: <20190729074711.16988-9-jagan@amarulasolutions.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Mon, 29 Jul 2019 12:09:32 +0300
Message-ID: <CAHp75Vfov5zY+QxY1P3nx95MsFSj+M8tjiHtSGiBaJ0f5rCLWA@mail.gmail.com>
Subject: Re: [U-Boot] [PATCH 08/15] wdt: dw: Add driver-model support
To: Jagan Teki <jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_020945_306069_038962D0 
X-CRM114-Status: UNSURE (   9.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andy.shevchenko[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 U-Boot Mailing List <u-boot@lists.denx.de>, Simon Glass <sjg@chromium.org>,
 Kever Yang <kever.yang@rock-chips.com>, Chin Liang See <clsee@altera.com>,
 linux-rockchip@lists.infradead.org, Akash Gajjar <akash@openedev.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 linux-amarula@amarulasolutions.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Mon, Jul 29, 2019 at 10:56 AM Jagan Teki <jagan@amarulasolutions.com> wrote:
>
> Add driver-model code for designware watchdog.

> +/*
> + * Set the watchdog time interval.
> + * Counter is 32 bit.
> + */
> +static int dw_wdt_set_timeout(struct dw_wdt *dw, unsigned int timeout)
> +{
> +       signed int i;
> +
> +       /* calculate the timeout range value */
> +       i = (log_2_n_round_up(timeout * dw->clk_rate)) - 16;

Redundant parenthesis.

> +       if (i > 15)
> +               i = 15;
> +       if (i < 0)
> +               i = 0;

Use clamp_t().

> +
> +       writel((i | (i << 4)), dw->regs + DW_WDT_TORR);
> +
> +       return 0;
> +}


> +       ret = clk_get_by_index(dev, 0, &clk);
> +       if (!ret)
> +               dw->clk_rate = clk_get_rate(&clk);
> +       else
> +               return -EINVAL;

Why not to use traditional pattern, i.e.

  if (ret)
    return -ERRNO;

-- 
With Best Regards,
Andy Shevchenko

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
