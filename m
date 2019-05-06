Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 660D415544
	for <lists+linux-rockchip@lfdr.de>; Mon,  6 May 2019 23:10:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qpe5lOBzPfWn2Hl9DyuicjfLOnBJ1OSV5WUdZH2y5lo=; b=AzEFpO3qk/fRXA
	xBk2Huu39QAl4rsRsLFs4w16psOmSAh2BDuoF1xccmgvB7Evaz2qAkaL+DE/zb5bKdykO7fjJ+jzD
	oju/Fpo/6swPSPa5cMG83AR1EHP115CSOCvufJrzLdV1jHDOMvcJM2Y0jhvS35fCu7qEbWyjND29p
	YIUkgtcGWtOZepjjHuegtX6uXKmuObSn/T92Ec0aPkSQtiYZWRJVVb2sp8pg5yY+2g5P+B4TpK1Vd
	5FXL0P9j++8jRxIIPXADNwkSVIq+0Hi/ff3W3Q4nkAuvi5VjoI3IgRuT64/EC6u2zHZzNjPgb7Fmd
	fceEkd2ai1s1yuRiMnNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNksL-0006nK-Cg; Mon, 06 May 2019 21:10:17 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNksI-0006mZ-7d
 for linux-rockchip@lists.infradead.org; Mon, 06 May 2019 21:10:15 +0000
Received: by mail-vs1-xe43.google.com with SMTP id b23so9061239vso.1
 for <linux-rockchip@lists.infradead.org>; Mon, 06 May 2019 14:10:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8bHpgQyzNXmSigtHpLPdMgiBL3zjoqHtCMHUPQ65vlc=;
 b=efbGg26t1plscKmTr5AG/RpzJ3Ly5HJYzat+OL5lpECeRe1if/gjdAvwM+3ktU48Ud
 FmojR3dM0QW0g9CApczD3ijClH8YvAj9cTzAqrmcZ0tq90TckGXajrvoaa1RrzTz9rR/
 tjoKcGH8AkqVNdaJKEU9GZYqZp4DICTTtYSnM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8bHpgQyzNXmSigtHpLPdMgiBL3zjoqHtCMHUPQ65vlc=;
 b=U6e1myERWNAHwKwk2009FhPJ2iJNVdFtT1CDVwHXUpHciabFUEnNff1SLvI5QpPqAW
 iUBGGXP65seUMr5PGGnIyFk8ON+Bs6DfaQ0ztZWqArhlAjR8UnZN+u0zcdSYpLjNtUEq
 5vCa+kIgcRbzVNBQVZ8Jx6ZOj2nbuUJnb/uLHU2ACdQg+PZxELmlW0XGK7wi1135mkJb
 PVnfvzfgC1gXjF2dPdWEpPqDO4+hpSzjde9ubeJU4wN6G0sAQj2raQXmD7aTX3+lwIlP
 CHusJgC0V47CQCtPIt8aY49FzhGo89pu0yqlN4rgicdT/jQOhNYhir2sMLm2wqTTp13q
 p6kw==
X-Gm-Message-State: APjAAAW5AKRDNwTvIErBPAFnDYt6LpHLRVR2mBZSPgAsdzfKCJmiFZvj
 KxxhBQ09PhEqeJTWLUKUovm/wML37SE=
X-Google-Smtp-Source: APXvYqx3rdumVKj+FOIre6t518IVyIkZXwYoOuxHXFevspV3m0AXYvvJUL2dftgQLsHmVQIr2qpE0w==
X-Received: by 2002:a67:e442:: with SMTP id n2mr3648992vsm.104.1557177009004; 
 Mon, 06 May 2019 14:10:09 -0700 (PDT)
Received: from mail-vs1-f45.google.com (mail-vs1-f45.google.com.
 [209.85.217.45])
 by smtp.gmail.com with ESMTPSA id k128sm5604036vkb.54.2019.05.06.14.10.07
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Mon, 06 May 2019 14:10:08 -0700 (PDT)
Received: by mail-vs1-f45.google.com with SMTP id j184so9017102vsd.11
 for <linux-rockchip@lists.infradead.org>; Mon, 06 May 2019 14:10:07 -0700 (PDT)
X-Received: by 2002:a67:f849:: with SMTP id b9mr9084650vsp.188.1557177007238; 
 Mon, 06 May 2019 14:10:07 -0700 (PDT)
MIME-Version: 1.0
References: <20190503174730.245762-1-dianders@chromium.org>
In-Reply-To: <20190503174730.245762-1-dianders@chromium.org>
From: Kees Cook <keescook@chromium.org>
Date: Mon, 6 May 2019 14:09:55 -0700
X-Gmail-Original-Message-ID: <CAGXu5jL9cJ+8scZ+Cg9yqdc9+rb563xs-qVjXXuPRJYjNa4Y8w@mail.gmail.com>
Message-ID: <CAGXu5jL9cJ+8scZ+Cg9yqdc9+rb563xs-qVjXXuPRJYjNa4Y8w@mail.gmail.com>
Subject: Re: [PATCH] pstore/ram: Improve backward compatibility with older
 Chromebooks
To: Douglas Anderson <dianders@chromium.org>, Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_141014_298380_C7119882 
X-CRM114-Status: GOOD (  20.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Anton Vorontsov <anton@enomsg.org>, Tony Luck <tony.luck@intel.com>,
 Brian Norris <briannorris@chromium.org>, LKML <linux-kernel@vger.kernel.org>,
 linux-rockchip@lists.infradead.org, Matthias Kaehlcke <mka@chromium.org>,
 Colin Cross <ccross@android.com>, Guenter Roeck <groeck@chromium.org>,
 jwerner@chromium.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

From: Douglas Anderson <dianders@chromium.org>
Date: Fri, May 3, 2019 at 10:48 AM
To: Kees Cook, Anton Vorontsov
Cc: <linux-rockchip@lists.infradead.org>, <jwerner@chromium.org>,
<groeck@chromium.org>, <mka@chromium.org>, <briannorris@chromium.org>,
Douglas Anderson, Colin Cross, Tony Luck,
<linux-kernel@vger.kernel.org>

> When you try to run an upstream kernel on an old ARM-based Chromebook
> you'll find that console-ramoops doesn't work.
>
> Old ARM-based Chromebooks, before <https://crrev.com/c/439792>
> ("ramoops: support upstream {console,pmsg,ftrace}-size properties")
> used to create a "ramoops" node at the top level that looked like:
>
> / {
>   ramoops {
>     compatible = "ramoops";
>     reg = <...>;
>     record-size = <...>;
>     dump-oops;
>   };
> };
>
> ...and these Chromebooks assumed that the downstream kernel would make
> console_size / pmsg_size match the record size.  The above ramoops
> node was added by the firmware so it's not easy to make any changes.
>
> Let's match the expected behavior, but only for those using the old
> backward-compatible way of working where ramoops is right under the
> root node.
>
> NOTE: if there are some out-of-tree devices that had ramoops at the
> top level, left everything but the record size as 0, and somehow
> doesn't want this behavior, we can try to add more conditions here.
>
> Signed-off-by: Douglas Anderson <dianders@chromium.org>

I like this; thanks! Rob is this okay by you? I just want to
double-check since it's part of the DT parsing logic.

I'll pick it up and add a Cc: stable.

-Kees

> ---
>
>  fs/pstore/ram.c | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
>
> diff --git a/fs/pstore/ram.c b/fs/pstore/ram.c
> index c5c685589e36..8df3bfa2837f 100644
> --- a/fs/pstore/ram.c
> +++ b/fs/pstore/ram.c
> @@ -669,6 +669,7 @@ static int ramoops_parse_dt(struct platform_device *pdev,
>                             struct ramoops_platform_data *pdata)
>  {
>         struct device_node *of_node = pdev->dev.of_node;
> +       struct device_node *parent_node;
>         struct resource *res;
>         u32 value;
>         int ret;
> @@ -703,6 +704,23 @@ static int ramoops_parse_dt(struct platform_device *pdev,
>
>  #undef parse_size
>
> +       /*
> +        * Some old Chromebooks relied on the kernel setting the console_size
> +        * and pmsg_size to the record size since that's what the downstream
> +        * kernel did.  These same Chromebooks had "ramoops" straight under
> +        * the root node which isn't according to the upstream bindings.  Let's
> +        * make those old Chromebooks work by detecting this and mimicing the
> +        * expected behavior.
> +        */
> +       parent_node = of_get_parent(of_node);
> +       if (of_node_is_root(parent_node) &&
> +           !pdata->console_size && !pdata->ftrace_size &&
> +           !pdata->pmsg_size && !pdata->ecc_info.ecc_size) {
> +               pdata->console_size = pdata->record_size;
> +               pdata->pmsg_size = pdata->record_size;
> +       }
> +       of_node_put(parent_node);
> +
>         return 0;
>  }
>
> --
> 2.21.0.1020.gf2820cf01a-goog
>


-- 
Kees Cook

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
