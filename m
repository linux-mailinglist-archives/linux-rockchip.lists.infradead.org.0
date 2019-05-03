Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28F5D133DB
	for <lists+linux-rockchip@lfdr.de>; Fri,  3 May 2019 21:06:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5GlfIcS29tG50rPhVewSDlhsMpp0FL824OIHfEXzero=; b=mhUW52/B1v5B8A
	Va94Pt7K3BOQ0s7g734tHoo8Ea0gAVsK/XSAnrVBmcH4E2XhxUEVPURFeCo8YrWTBvFRioooAewTk
	r6qZjLVaYOEUoD5fGotVhDJ4ZgUi/Z1vrTL8zkeTc8eKyMdtnftKd2gKisfqTTFOlA5Fs0nkrhHuQ
	9n1+ggnnJMIoRRETFYD1rjwRS50v0K68cKvptbbfhE26HzYwPcYdSvtandVJzv+ZXhs5JwdNjE74y
	NY7kcy7/D5FK7Xx9FcvUkbPwvxdMqKyRMSV9xe46oN9H9XFnluyU/hNbhZTjYVKxkP67nW0NzQXHi
	rF5KFZEvwRwjlwNcOGzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMdVo-0004ZY-Px; Fri, 03 May 2019 19:06:24 +0000
Received: from mail-yw1-xc43.google.com ([2607:f8b0:4864:20::c43])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMdVk-0004YE-HR
 for linux-rockchip@lists.infradead.org; Fri, 03 May 2019 19:06:23 +0000
Received: by mail-yw1-xc43.google.com with SMTP id o65so3341431ywd.8
 for <linux-rockchip@lists.infradead.org>; Fri, 03 May 2019 12:06:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=RymFTzKSXlOnRrrgpzwhtG4p72cSVzEal0sZliJ6Yk4=;
 b=uRrXk30jt+H13y1AirjItdE9wVXL7iPzrxMsXZEtFCeWCW2CJhynIh9uLhjsYZuVSn
 HrdofWZDGaBVX08INVRieJyH5c0ZELiN9hSOHGii/3tyfEpICfSc8n3B0F4yDjArFL/a
 uR0Aawh19eusZT+C/011cNBNlPzNyZMcmpqg592TMiLWfZ4o7zYU1uC95JMJxSkGUkvj
 OBDhhB2S36V8KAxk1fyGQF/f+OsMMhciz3vxbJkkj4dGXVfBHvZj9uO+8sEjlFP4hSQZ
 JuUIm73Eat/9K+RaHX4dSdZRXSGt2RM5I38VJX+6JPJtLD1kD4OomSowBK1w6wfz7NWb
 j0/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RymFTzKSXlOnRrrgpzwhtG4p72cSVzEal0sZliJ6Yk4=;
 b=L5+5RpUCmMxkJrCuZDd/5vDtAWJZBnr+aHUQhtBzKF2jMll4VFVLpCdKkRlJs0X1Oj
 bbhBTtiAvpu6CYqSrdxPh5R6V8N5kVjioYADl65CznhFTBY8j3yVEUjJUXULYyg3sStY
 VWURsFBLz2VLov+gQtGODY7mXJPQtot+zuPeV3mIJQGV7kRDFeoSBkxyT2xN/FsUhxo6
 2af/bHx90hLsDTR6h5JhyJ4Ashqcn2T8VBDMh4d6400Ov1NT3wdMcNSePtFd33BBcFnV
 i2sv16ZRhWxh/GcTuzd3n9ZXgma/VG/2TdODFAoSxLfplLl3eCeocDZLq9s4b97BffKK
 Tb7Q==
X-Gm-Message-State: APjAAAWYz6oBtNiWDVPGiQEDqe6PrCvRYeR51SNk8dYUH7NV8llndIng
 GiRdW1jQJVl5OAha6ux87Dsc+Aq68j8pr+v1XD1yMA==
X-Google-Smtp-Source: APXvYqzOuoTYhNiGdqWk2EZG7KZrqXO9w1/jyrlMyPjPpW8lxtRSmvbAVwyfRsZAZGvKpoAtwe8VCsUxSqWWcZrfIxA=
X-Received: by 2002:a25:25c9:: with SMTP id l192mr9104848ybl.63.1556910376548; 
 Fri, 03 May 2019 12:06:16 -0700 (PDT)
MIME-Version: 1.0
References: <20190503174730.245762-1-dianders@chromium.org>
In-Reply-To: <20190503174730.245762-1-dianders@chromium.org>
From: Guenter Roeck <groeck@google.com>
Date: Fri, 3 May 2019 12:06:05 -0700
Message-ID: <CABXOdTdPXPc8Uq=08xYv2YTF-fn_ZX4kjCwRjMA7qL+Epu7WcA@mail.gmail.com>
Subject: Re: [PATCH] pstore/ram: Improve backward compatibility with older
 Chromebooks
To: Douglas Anderson <dianders@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_120620_608336_B68007A5 
X-CRM114-Status: GOOD (  19.66  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 T_DKIMWL_WL_MED        DKIMwl.org - Medium sender
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
Cc: Brian Norris <briannorris@chromium.org>, Kees Cook <keescook@chromium.org>,
 Tony Luck <tony.luck@intel.com>, Anton Vorontsov <anton@enomsg.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Matthias Kaehlcke <mka@chromium.org>, Colin Cross <ccross@android.com>,
 Guenter Roeck <groeck@chromium.org>, Julius Werner <jwerner@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Fri, May 3, 2019 at 10:48 AM Douglas Anderson <dianders@chromium.org> wrote:
>
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

Reviewed-by: Guenter Roeck <groeck@chromium.org>

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

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
