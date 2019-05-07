Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D254816610
	for <lists+linux-rockchip@lfdr.de>; Tue,  7 May 2019 16:53:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vb/WgeplOo3SdmMhQRmRDRc3RUYgaxDblZoVS3p0ids=; b=h0PUAbbcKTVw+t
	5otiwETDfQRCh5Yv8ZwZtCpdPf5OCIKIGBP/rzI9P7/lLw+wmoEw/bTlNncQLg+YJ6nuIGoVMnRwE
	HtR5ck5CbhIyom05Ufb+C8CX3CBZnXdCa+q+Nmt+OwGqhy9aC4ihpfsTvZwS7m3Z5SYJn3K1A0q6q
	brtJ4LapLELTKk/3+XN9XyHAErPVG8Kl6neo29L4CTOt9H4zJer1LddxybFN3jGSkFJwiZOXIoflZ
	EULGAR7ieZXuq5o/g541UpZ/kym55ZSbXNLLU8FanifNVA9DgdFELYjgS7dmWyXsv0oBfzKbvXR+I
	fvZQxjkSND1JAbhI4Ctg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO1St-0001tH-RN; Tue, 07 May 2019 14:53:07 +0000
Received: from mail-yw1-xc41.google.com ([2607:f8b0:4864:20::c41])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO1So-0001sV-86
 for linux-rockchip@lists.infradead.org; Tue, 07 May 2019 14:53:06 +0000
Received: by mail-yw1-xc41.google.com with SMTP id b74so13313758ywe.5
 for <linux-rockchip@lists.infradead.org>; Tue, 07 May 2019 07:52:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QsBH3/6csQjaE99mExw7IfFXVrloklkX9pCxbhdLh74=;
 b=mbgXMp/1KMUq1BUS9eZLhL8CKZK/DoGo3oNSSBQJjt5C4AfCcTEo8K03NsU2Qd7zzv
 i1JRhvOPD5EL2ftJF3As7EK4mS+lN0tF4wt28QOUQat71TEp+O+AuxHLdfo4pqZKsaEd
 kwR2mE/Oz3X/WeLW9csTbepgqy+SZfKktXiKawhU/AxNsXlehFKBMzYpLLbfwq8wBYcz
 C2+skA0IsJ2gBWmzmU85JpXxQZkyi8l/i5u9L8phzZl2jm+x0qtnOgKdyIOEnO/xl7tL
 ND6f+VSi2LXKf/z2y7f+hft23H3mSAVeIp51nrNe0AOI9ArlI8ew29HZIOTIyj5ziZeU
 T58w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QsBH3/6csQjaE99mExw7IfFXVrloklkX9pCxbhdLh74=;
 b=JeVI9Xqlt2zdTG57zxC3R8m3IebYfeHvrlWWBkFopb20cXvMIvzuLZ2bgrJromyu1m
 lic6qglkJrBbOHBygjCi0LBPRs6PzMzjzmBH+WzCkwTS4Iy7kkRAfMlClNpCab3oXb+Q
 gFxkhRZCveqe4LAVb1s8XG8QEjzwS3opvWBQgBt0XIx62EieiDmc+hfK1zVtjJkhdb/5
 Up1x3d86a73rZVzSXhDHNSzumPUcPB4AXXbEfCdDl47/JsaaEr3D4GUTI2+GHz2REdPl
 5Cfx+RAM9kgSnaiRPSz4n5Al6y2ol9mwPJ8T0hym5ACWcFKD3NXRqqWoRFxhdsi6zU3W
 aV2w==
X-Gm-Message-State: APjAAAXhGZqXUP+g1Vy0DfiTk2BzG9FZ24e0OZBLQIquUqzPp4rk9D98
 vhIoyYc6U02VSdd1vtdqXNoO1HBK9eaMQpVc4RgICAC1
X-Google-Smtp-Source: APXvYqwSOyNWaXXqAR64Yl6lra7e1M+E9ZK/56Uz24VtVymWObkhiXt0imSNWCiPDevrgTPeJxA2O5ZLVLoebp5pxmc=
X-Received: by 2002:a25:5145:: with SMTP id f66mr20397598ybb.151.1557240778588; 
 Tue, 07 May 2019 07:52:58 -0700 (PDT)
MIME-Version: 1.0
References: <20190507044801.250396-1-dianders@chromium.org>
In-Reply-To: <20190507044801.250396-1-dianders@chromium.org>
From: Guenter Roeck <groeck@google.com>
Date: Tue, 7 May 2019 07:52:47 -0700
Message-ID: <CABXOdTcsDU5dSAFWZBAvrOGRa+BokgKi9huGfs=fO4ObCOvnHQ@mail.gmail.com>
Subject: Re: [PATCH] of: Add dummy for of_node_is_root if not CONFIG_OF
To: Douglas Anderson <dianders@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_075304_480349_74DA0C90 
X-CRM114-Status: GOOD (  12.63  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c41 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE"
 <devicetree@vger.kernel.org>, Kees Cook <keescook@chromium.org>,
 Brian Norris <briannorris@chromium.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>, Guenter Roeck <groeck@chromium.org>,
 Julius Werner <jwerner@chromium.org>, Frank Rowand <frowand.list@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Mon, May 6, 2019 at 9:48 PM Douglas Anderson <dianders@chromium.org> wrote:
>
> We'll add a dummy to just return false.
>
> Signed-off-by: Douglas Anderson <dianders@chromium.org>

Reviewed-by: Guenter Roeck <groeck@chromium.org>

> ---
>
>  include/linux/of.h | 5 +++++
>  1 file changed, 5 insertions(+)
>
> diff --git a/include/linux/of.h b/include/linux/of.h
> index 0cf857012f11..62ae5c1cafa5 100644
> --- a/include/linux/of.h
> +++ b/include/linux/of.h
> @@ -653,6 +653,11 @@ static inline bool of_have_populated_dt(void)
>         return false;
>  }
>
> +static inline bool of_node_is_root(const struct device_node *node)
> +{
> +       return false;
> +}
> +
>  static inline struct device_node *of_get_compatible_child(const struct device_node *parent,
>                                         const char *compatible)
>  {
> --
> 2.21.0.1020.gf2820cf01a-goog
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
