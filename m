Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DC60155BC
	for <lists+linux-rockchip@lfdr.de>; Mon,  6 May 2019 23:41:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uYsNS58UXlaAi7mVWUKYHBhr842cwbIibbEbJjcuMwo=; b=RjnLpLNDgYxYwt
	XSCvbF9ultMN53q6AN+yrv6gcV9A4xnnpLirXeKALwdAAdpfEhCI3McARwJyRH52zWhci3pZTRwTl
	8b5tPaL0DxHkQ/dUW6m4cSV15fv8FND0W2j16arv4qSy7D077lpvdcS8RZVHulVjTNNJqVRrtwSkf
	sWksp9x16GXxRomq2LCT64S4+MUgC8FYldtA8ypeXODWl4sC6EjIW40/GhWz+wxnu7e62rUFIpowg
	pRPjk+JRI8W/cace1ZM5rmQmuAml8jYNBBIqSjPkkVGoTCoGVRyf28udwkv9SwpkR//UbzVVvwyOY
	iNP5Knedx4IqZSoHV+bQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNlM4-0007rt-0G; Mon, 06 May 2019 21:41:00 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNlM1-0007rC-AU
 for linux-rockchip@lists.infradead.org; Mon, 06 May 2019 21:40:58 +0000
Received: by mail-lf1-x142.google.com with SMTP id n22so2708122lfe.12
 for <linux-rockchip@lists.infradead.org>; Mon, 06 May 2019 14:40:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xUYUM3YLijTLeXzveWxy2iQb0w6OPHiVIv+ceBz6sbU=;
 b=m0ZBtK+RKIGoQCPFhcGmfz/fR3JKMpEkCQ2BKr5QPJZXeqhFiy2oIj3ZogI+wRIxj0
 jifNGNwp6ddF/XhxQP3WkBjB3ovSwqjpy/mWyntoNVojLGJau7uISsv+WyTvOF3J4IRk
 4Ycf7GbpX+jn2dskciVGM8+W8mrEHA2nlVBtE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xUYUM3YLijTLeXzveWxy2iQb0w6OPHiVIv+ceBz6sbU=;
 b=lBrl6vqSiyOW3F5pUmBNNMO8S9wYgux98GW5xCjP6fxBNkGk3xujLvqznVrIVbcS8t
 IIoU+jlv/c00/usIxHqvy2yryHANFwY3E9Mwc+5pS4Cs47YgAVf/7bDrG/otzuM+s7n7
 fUwUOJxFsqJoEnkoXUobdYNwKjznlvC0YzfTXJyG8sJoT9pLDG3xiQyC9DaRff7lNOY/
 0PAmxV+F2JjkLGERZ4a5TtQNAWGyDS2qwJHvly1DbaLyxLKnDc9SBNEQoD4mX8mqlZbR
 TAbKGfr3mu/0eEynZk+v6ZuDr5dcbS9YVz4MPyMBNvzxRyBXvIOzKp+IzgCZhI3m3J9B
 BhkA==
X-Gm-Message-State: APjAAAU/8Ov74XvDHLwkIxnoczKiboAidPzmNz2iQ6fxQblvtDJ1lcqo
 vydqeIKD/Yjork75q1y3/hyKoR47+cw=
X-Google-Smtp-Source: APXvYqz4HJavZBiv57/k6cz63v3wW6o3J9MsN4v9o15gf2tGwQPwOj2CUSVW0Xl6CSOydMF7QU60jg==
X-Received: by 2002:ac2:410e:: with SMTP id b14mr151523lfi.100.1557178854174; 
 Mon, 06 May 2019 14:40:54 -0700 (PDT)
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com.
 [209.85.208.181])
 by smtp.gmail.com with ESMTPSA id l14sm2239153lfc.61.2019.05.06.14.40.53
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Mon, 06 May 2019 14:40:54 -0700 (PDT)
Received: by mail-lj1-f181.google.com with SMTP id y10so5900409lji.9
 for <linux-rockchip@lists.infradead.org>; Mon, 06 May 2019 14:40:53 -0700 (PDT)
X-Received: by 2002:a2e:4a1a:: with SMTP id x26mr13281214lja.49.1557178852739; 
 Mon, 06 May 2019 14:40:52 -0700 (PDT)
MIME-Version: 1.0
References: <20190503174730.245762-1-dianders@chromium.org>
In-Reply-To: <20190503174730.245762-1-dianders@chromium.org>
From: Brian Norris <briannorris@chromium.org>
Date: Mon, 6 May 2019 14:40:40 -0700
X-Gmail-Original-Message-ID: <CA+ASDXOkHxYumCBv-T0gxTjdMVTu-c=33Lk-0TUgJ3WGUn2DVQ@mail.gmail.com>
Message-ID: <CA+ASDXOkHxYumCBv-T0gxTjdMVTu-c=33Lk-0TUgJ3WGUn2DVQ@mail.gmail.com>
Subject: Re: [PATCH] pstore/ram: Improve backward compatibility with older
 Chromebooks
To: Douglas Anderson <dianders@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_144057_380921_A67B3339 
X-CRM114-Status: GOOD (  14.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
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
Cc: Tony Luck <tony.luck@intel.com>, Kees Cook <keescook@chromium.org>,
 Anton Vorontsov <anton@enomsg.org>,
 Linux Kernel <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Matthias Kaehlcke <mka@chromium.org>, Colin Cross <ccross@android.com>,
 Guenter Roeck <groeck@chromium.org>, Julius Werner <jwerner@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Fri, May 3, 2019 at 10:48 AM Douglas Anderson <dianders@chromium.org> wrote:
> When you try to run an upstream kernel on an old ARM-based Chromebook
> you'll find that console-ramoops doesn't work.

Ooh, nice! I still get annoyed by old depthcharge firmware. It's
almost as if we should have gotten an upstream binding approved before
baking it into firmware...

> --- a/fs/pstore/ram.c
> +++ b/fs/pstore/ram.c

> @@ -703,6 +704,23 @@ static int ramoops_parse_dt(struct platform_device *pdev,
>
>  #undef parse_size
>
> +       /*
> +        * Some old Chromebooks relied on the kernel setting the console_size
> +        * and pmsg_size to the record size since that's what the downstream
> +        * kernel did.  These same Chromebooks had "ramoops" straight under
> +        * the root node which isn't according to the upstream bindings.

The last part of the sentence technically isn't true -- the original
bindings (notably, with no DT maintainer Reviewed-by) didn't specify
where such a node should be found:

35da60941e44 pstore/ram: add Device Tree bindings

so child-of-root used to be a valid location. But anyway, this code is
just part of a heuristic for "old DT" (where later bindings clarified
this), so it still seems valid.

>  Let's
> +        * make those old Chromebooks work by detecting this and mimicing the

s/mimicing/mimicking/

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

Otherwise, looks good to me:

Reviewed-by: Brian Norris <briannorris@chromium.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
