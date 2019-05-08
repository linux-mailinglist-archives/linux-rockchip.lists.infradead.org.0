Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0959F17F87
	for <lists+linux-rockchip@lfdr.de>; Wed,  8 May 2019 20:10:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PcYMUC4nVKBxEhg7A1Ia+5gsvrT8g9kvCLUEuU/ffTs=; b=LLeoqZZD6iMaT0
	HIwixEyekx0fNj179tlch3JjAVbG6Zzl0I9+ghjOrWrk/R94eYeNRetYASJoSbnVBs/Uo3qs8NOvv
	gNPhCq6tIPTCTl5TOVRxq8poBnGWYMAOkXHZHYSi4aOmOR5yCnRs4mmFAHm28H6IrNs+2+S3nmJvb
	WFMABBqXBXDukXQetAS+VzgPGXo5bARnmSJ37Eh1Ug+eH3XHLuWB76V0d3LnzkexkCF0tW7pjGEF+
	f44RxZlEPlj0GekcTW326ocJEcLK/IRXveBdBNH/Hgv8dRa2qvRDsOTf+vPPoC0p9hU/Djd2SaKRM
	NszBoZGA85iiQZEGDUpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOR1L-0003Vg-78; Wed, 08 May 2019 18:10:23 +0000
Received: from mail-vs1-xe41.google.com ([2607:f8b0:4864:20::e41])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOR1H-0003VJ-FG
 for linux-rockchip@lists.infradead.org; Wed, 08 May 2019 18:10:21 +0000
Received: by mail-vs1-xe41.google.com with SMTP id j184so13218736vsd.11
 for <linux-rockchip@lists.infradead.org>; Wed, 08 May 2019 11:10:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=F3GSYUt5BCOwJ4C2jh44sg2SA8WHx9EsOyf2WJj0PXY=;
 b=FlaN5J1m3i0G1C1e5AUzwxem3wCG+Fc8/Vc4jRlvw1b71OZCzWEpfzh5bf1gqiZamd
 6LQJSrPG5AHJ0i7TZBu/tSAtYEnGstBAztw9NM7KO/wqZJsTuO5INLfbcCxRRRsEozcj
 DPfJJKf5Ar2zSnRmEED2scZ0nNEDB4TAKKWrg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=F3GSYUt5BCOwJ4C2jh44sg2SA8WHx9EsOyf2WJj0PXY=;
 b=k5tqtpQI5MikeuVntvHQLsIsb0HDEC3Mjk0vSvYvsJ1sWuQPJoXbrj2zQ6Dn1RTc4K
 fE5LnIGYqjXAxpPi36SIVqhQhq8zuLsPEd57UKx4/jdRkj4WejCITcRv0CzofMYVNKcV
 FiHURqJeDNK5f1WaDAJiJlbHKC4JkpLfcb7Z6HrbQqqXtlky85mH77sBhFz1UpWfinEE
 SLnRLL4AE0fFm7U2A57C5RQ7xSmNTAOpDFuyDHuutKVq20H5kkzjwkMos5ssZvKsLt6b
 5tduhDjE0zuRYpMc82zpTqpsPnacizWDvKFuLNxc/bMGiiOuHOLDI9dDvaVAb86mcOnP
 JDrg==
X-Gm-Message-State: APjAAAVSJDuhKmTA39OkYAsGtbevVuKvhiRYAe9iZ7kaJSgVlF4p84qL
 ss4acSsavhvHTVLAqYfZuFXOP+VI/d4=
X-Google-Smtp-Source: APXvYqwiySO2dYD7BU+CYwCKALPHdFZSksLJAqLo7dkjesCJWf3PA5eCYG0L9bEcyrDQw8W9UnYBpw==
X-Received: by 2002:a67:eb15:: with SMTP id a21mr8244607vso.197.1557339017377; 
 Wed, 08 May 2019 11:10:17 -0700 (PDT)
Received: from mail-vs1-f48.google.com (mail-vs1-f48.google.com.
 [209.85.217.48])
 by smtp.gmail.com with ESMTPSA id u3sm6463310vsi.2.2019.05.08.11.10.15
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Wed, 08 May 2019 11:10:16 -0700 (PDT)
Received: by mail-vs1-f48.google.com with SMTP id g187so13236566vsc.8
 for <linux-rockchip@lists.infradead.org>; Wed, 08 May 2019 11:10:15 -0700 (PDT)
X-Received: by 2002:a67:f849:: with SMTP id b9mr15669234vsp.188.1557339015476; 
 Wed, 08 May 2019 11:10:15 -0700 (PDT)
MIME-Version: 1.0
References: <20190508154832.241525-1-dianders@chromium.org>
In-Reply-To: <20190508154832.241525-1-dianders@chromium.org>
From: Kees Cook <keescook@chromium.org>
Date: Wed, 8 May 2019 11:10:03 -0700
X-Gmail-Original-Message-ID: <CAGXu5jLhmvRbZOhNPkGr9=oSn-aA1CempctTyM3hfW3uOf8DpQ@mail.gmail.com>
Message-ID: <CAGXu5jLhmvRbZOhNPkGr9=oSn-aA1CempctTyM3hfW3uOf8DpQ@mail.gmail.com>
Subject: Re: [PATCH v2] pstore/ram: Improve backward compatibility with older
 Chromebooks
To: Douglas Anderson <dianders@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_111019_537097_9389E7E4 
X-CRM114-Status: GOOD (  21.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Brian Norris <briannorris@chromium.org>, Kees Cook <keescook@chromium.org>,
 Tony Luck <tony.luck@intel.com>, Anton Vorontsov <anton@enomsg.org>,
 LKML <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Matthias Kaehlcke <mka@chromium.org>, Colin Cross <ccross@android.com>,
 Guenter Roeck <groeck@chromium.org>, Julius Werner <jwerner@chromium.org>,
 Frank Rowand <frowand.list@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Wed, May 8, 2019 at 8:49 AM Douglas Anderson <dianders@chromium.org> wrote:
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

Thanks! I've applied this to my testing tree and I'll push to Linus in
a couple days.

-Kees

> ---
>
> Changes in v2:
> - s/mimicing/mimicking/ (Brian Norris)
> - Slight rewording of the comment (Brian Norris)
> - Check name rather than relying on of_node_is_root() (Frank Rowand)
>
>  fs/pstore/ram.c | 21 +++++++++++++++++++++
>  1 file changed, 21 insertions(+)
>
> diff --git a/fs/pstore/ram.c b/fs/pstore/ram.c
> index c5c685589e36..5195a3a3daec 100644
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
> @@ -703,6 +704,26 @@ static int ramoops_parse_dt(struct platform_device *pdev,
>
>  #undef parse_size
>
> +       /*
> +        * Some old Chromebooks relied on the kernel setting the
> +        * console_size and pmsg_size to the record size since that's
> +        * what the downstream kernel did.  These same Chromebooks had
> +        * "ramoops" straight under the root node which isn't
> +        * according to the current upstream bindings (though it was
> +        * arguably acceptable under a prior version of the bindings).
> +        * Let's make those old Chromebooks work by detecting that
> +        * we're not a child of "reserved-memory" and mimicking the
> +        * expected behavior.
> +        */
> +       parent_node = of_get_parent(of_node);
> +       if (!of_node_name_eq(parent_node, "reserved-memory") &&
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
