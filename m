Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ED3F1F58DC
	for <lists+linux-rockchip@lfdr.de>; Wed, 10 Jun 2020 18:16:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3fD73pyMhkw6WWfoATT7vZKYoPkxYtF9bEvrjP4eeDM=; b=YZWyCENuegBAXz
	nxb5q3KpwnODEK2s/i0ZYbnyzymKD5MzmxDDQVMVf5t2EWcT8bFM021NtTpM5zRQq5CSUz4pTToDL
	dqaxTZUysIHn79PYWwuScdPE77RnpsBNd4FNgTD7mMPJyV9qP+QoJCbY7pMjIOqevXJTFmN8N/E14
	JYeTEomVWvw2XMbg/192HbB38uGnv6f7h67aUxR2W/l9Wpjgo87rLwxPVVB8YLviclz+Hp4VGeDJP
	FVh5A+cQHjpd9YuOGgBCGgiMQsHLeLQB7VGfivkbV/mf/N8Ju78Ajk/daW4aAlmqNys2tOofdUfIT
	5863s9QfGheJQAc6s2gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj3Oa-00081U-32; Wed, 10 Jun 2020 16:16:08 +0000
Received: from mail-ej1-x643.google.com ([2a00:1450:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj3OW-00080Z-Ps
 for linux-rockchip@lists.infradead.org; Wed, 10 Jun 2020 16:16:06 +0000
Received: by mail-ej1-x643.google.com with SMTP id k11so3214768ejr.9
 for <linux-rockchip@lists.infradead.org>; Wed, 10 Jun 2020 09:16:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9vzAB6y83+KIuXqPLjKbE8fsh9ovocfCe1ei0OzrjcA=;
 b=C+c87DqJTTIPulj52HRAtCi4B2XMOhPjV9OW7P/pJZ/1aQe33XqhSiY3k1tN/kiRc1
 Hi8jOdzkLgKbhC4eoYYC904fb8JUVE8rhVepxVbxVW8Ai8tm6gHI7SZTC0vmdE3sERS3
 4exq42M+LOB0hff+C/FzO9DLze9LDRTbiEUdI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9vzAB6y83+KIuXqPLjKbE8fsh9ovocfCe1ei0OzrjcA=;
 b=IicdXE47ZoWuEgjK79vAQAjK1PfEwDP0u+kHK5G0PqEja3vG9uHhajxUqmKptDcmPS
 lqrcb8L3ylQ08wzAqXe/oi4D/SHyZKC3jCNwHpKGMsVReZn42IY0817f6HPZDF9edMHo
 rVjN3z807AOYpD0vXqWQoo+L9ozlPiLy2nZhbXyjCSxLUv7Zhc4X3hItsqctN3aTouTq
 uyiJF/l8i7xMB5Sho4tz2E/yq8Enq38r4/LZpVThDvJifFbX3ixh+gEQTHqvKNzF3S+5
 QSXxuWr8AH86laSiTKlMyDMEJcJarIPQlsjqIrrOp8M/Wdh3HrLZUcj3wgMcOOaSxwSb
 DAig==
X-Gm-Message-State: AOAM5317ANWwjOx38GDJMstXFoNTbmnOZ4NylLuaj14sSJt9n8ecn3fO
 w1oln+D3177rz1WboUM3Zp5c85+ahmYUIw==
X-Google-Smtp-Source: ABdhPJzbM/mz+UQH9z8gga15BBirG5raOjLVPa8+viXIS65Ni2jvrdYJ2G1BsWKdjFfhAdxYBIWTHQ==
X-Received: by 2002:a17:906:c102:: with SMTP id
 do2mr4006188ejc.126.1591805762513; 
 Wed, 10 Jun 2020 09:16:02 -0700 (PDT)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com.
 [209.85.221.45])
 by smtp.gmail.com with ESMTPSA id dg24sm68896edb.55.2020.06.10.09.16.01
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 10 Jun 2020 09:16:01 -0700 (PDT)
Received: by mail-wr1-f45.google.com with SMTP id t18so2940128wru.6
 for <linux-rockchip@lists.infradead.org>; Wed, 10 Jun 2020 09:16:01 -0700 (PDT)
X-Received: by 2002:a5d:6750:: with SMTP id l16mr4527306wrw.295.1591805761310; 
 Wed, 10 Jun 2020 09:16:01 -0700 (PDT)
MIME-Version: 1.0
References: <20200515142952.20163-1-dafna.hirschfeld@collabora.com>
 <20200515142952.20163-2-dafna.hirschfeld@collabora.com>
 <CAHD77H=LhYV31Jw_-cTvXPh0K2ocr6o97ymJ2KkmCdkH_DE7gg@mail.gmail.com>
 <b70dfcd2-6623-d1c9-78eb-d22b38434c73@collabora.com>
In-Reply-To: <b70dfcd2-6623-d1c9-78eb-d22b38434c73@collabora.com>
From: Tomasz Figa <tfiga@chromium.org>
Date: Wed, 10 Jun 2020 18:15:48 +0200
X-Gmail-Original-Message-ID: <CAAFQd5D4N9_WkQmwA-BVkk6aHUpsNOY0i8fvgbqL3+OiiLQ+kw@mail.gmail.com>
Message-ID: <CAAFQd5D4N9_WkQmwA-BVkk6aHUpsNOY0i8fvgbqL3+OiiLQ+kw@mail.gmail.com>
Subject: Re: [PATCH v2 1/4] media: staging: rkisp1: cap: change RGB24 format
 to XBGR32
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_091604_856612_A9FEA9A7 
X-CRM114-Status: GOOD (  12.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Dafna Hirschfeld <dafna3@gmail.com>, Hans Verkuil <hverkuil@xs4all.nl>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Helen Koike <helen.koike@collabora.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>, kernel@collabora.com,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Wed, Jun 10, 2020 at 6:11 PM Dafna Hirschfeld
<dafna.hirschfeld@collabora.com> wrote:
>
>
>
> On 27.05.20 01:04, Tomasz Figa wrote:
> > Hi Dafna,
> >
> > On Fri, May 15, 2020 at 4:30 PM Dafna Hirschfeld
> > <dafna.hirschfeld@collabora.com> wrote:
> >>
> >> According to the TRM, the YUV->RGB conversion outputs
> >> "24 bit word". What it means is that 4 bytes are used with
> >> 24bit for the RGB and the last byte is ignored.
> >
> > I don't see this mentioned in the datasheets I have. On the other
> > hand, XBGR32 indeed makes much more sense, as the 3-byte RGB isn't a
> > very popular format. Have you validated that the hardware behavior
> > indeed matches that?
>
> Hi, yes I validated it, I also found it mentioned here:
>
> http://rockchip.fr/RK3288%20TRM/rk3288-chapter-31-image-signal-processing-(isp).pdf
>
> under section "31.3.9 YCbCr to RGB Conversion"

Okay, great. Thanks!

Feel free to add my Reviewed-by after addressing Helen's comments.

Best regards,
Tomasz

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
