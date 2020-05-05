Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2112C1C579A
	for <lists+linux-rockchip@lfdr.de>; Tue,  5 May 2020 15:56:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DNd0ZBBkofgn6SEoVLKVRtfrDZTzi3T/LTdyT0rAOII=; b=cv4Ef3Qa1rVFnP
	vs4zMjiaKev64TUtCfvJoMgceBgFp425nqv19OkTolAN8DXT5hRulitV+JuOOzAgZ+feGVdY2qvPZ
	7hcA9so/xnZDGYD6rXyYrmryZHUctacAWTvwc8tvx5Lkw1gb42iOm5kDRof9eY/Bs4YSxSDGDJak4
	bVFqvEna3YMBUZcbHg+XO3wr4AB+C8yp8Huhyb1j0fsb1THlii7AufLBcMCaPgIisgtlLXx/eBRKh
	N377UP4Ee+ctRKhQ7TZ3WNloBAvlxw4E+BVeGmXMqq7DehcwhercC4mJADlmK1XZezaJxvLjcKzLA
	EFW+46gNkWSHAyoub3dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVy3h-00061x-Ve; Tue, 05 May 2020 13:56:29 +0000
Received: from mail-ej1-x641.google.com ([2a00:1450:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVy3X-0005qc-6D
 for linux-rockchip@lists.infradead.org; Tue, 05 May 2020 13:56:22 +0000
Received: by mail-ej1-x641.google.com with SMTP id a2so1735384ejx.5
 for <linux-rockchip@lists.infradead.org>; Tue, 05 May 2020 06:56:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kByI+w+1r3yVREOJZ6z093OJKNl72Y1CH8ahM0Q63XY=;
 b=ipNtgkcPwQaCd/KFAKKCzEcUcKFCfb7x3z4NEVWMwUh94Bu54C4AbN3A72Y5hKnJ+n
 oiStdLca3s0SQIKFEVG/KxqF9OkQx3cbrCDG4u9U3+xQz/xE655gmDYg1+OJeblGE2Iu
 Y38P1mTpYn7m6tr5ZZYBBkCmxVOIAJ/Cck6YE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kByI+w+1r3yVREOJZ6z093OJKNl72Y1CH8ahM0Q63XY=;
 b=QlLIBR7twocBtn0U/xWuFH53C7EjQ6JkRqt/p2/AmCIynFxxGuCU4hTMDJyh6SuBet
 PkXx16Ix5GScyjDv8yc/9pOTI5+jLvQzRcbqAQL5HQYMEHC08BNX8q56GUNScyi/U0X5
 VL6u8JOTqV4O1m2M63YbL312kFZJR1AZR5fMY0uOn7lIDZWcVjB5ljsUDUggsspzVdwF
 RH4HH6z3GQVI2tb5QzHRV+DuaHKUCvBjNrBjtc9D4QKI8t0ozFHNaRmBszcQiwO7IpZu
 HIBLPRNBYcM4yvigFMXTRQ1pI7SQ84TXVnqN18OeM0e5DO8joeSoiAvkxMagDWaZBodp
 AgrQ==
X-Gm-Message-State: AGi0PuY6BkCgiAVPNb6k6ttMXqoV6qr4KLQlZVam9Vbo28AeuIBVDQ4t
 WV3BNZvsgL1KUsWsfwn5KHyknMefIK5POQ==
X-Google-Smtp-Source: APiQypJ/SYAhuAa4mJxpgaSzkPGqBxqcbQdkLB6Qg9oIIYP20onTGsAenLY2Z27niIotwLgk4f254A==
X-Received: by 2002:a17:906:6411:: with SMTP id
 d17mr2847525ejm.109.1588686975587; 
 Tue, 05 May 2020 06:56:15 -0700 (PDT)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com.
 [209.85.221.45])
 by smtp.gmail.com with ESMTPSA id s10sm286725edq.3.2020.05.05.06.56.14
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 05 May 2020 06:56:14 -0700 (PDT)
Received: by mail-wr1-f45.google.com with SMTP id x17so2877944wrt.5
 for <linux-rockchip@lists.infradead.org>; Tue, 05 May 2020 06:56:14 -0700 (PDT)
X-Received: by 2002:adf:d0d1:: with SMTP id z17mr3809161wrh.295.1588686973780; 
 Tue, 05 May 2020 06:56:13 -0700 (PDT)
MIME-Version: 1.0
References: <20200505134110.3435-1-ezequiel@collabora.com>
 <20200505134110.3435-2-ezequiel@collabora.com>
In-Reply-To: <20200505134110.3435-2-ezequiel@collabora.com>
From: Tomasz Figa <tfiga@chromium.org>
Date: Tue, 5 May 2020 15:56:02 +0200
X-Gmail-Original-Message-ID: <CAAFQd5AWZFoPk2YTp2k8M7LvJshxw46-z+wK2VoM9EzB2CqiFA@mail.gmail.com>
Message-ID: <CAAFQd5AWZFoPk2YTp2k8M7LvJshxw46-z+wK2VoM9EzB2CqiFA@mail.gmail.com>
Subject: Re: [PATCH v3 1/3] media: rkvdec: Fix .buf_prepare
To: Ezequiel Garcia <ezequiel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_065619_422203_82A56E0A 
X-CRM114-Status: GOOD (  19.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Heiko Stuebner <heiko@sntech.de>, Alexandre Courbot <acourbot@chromium.org>,
 Jonas Karlman <jonas@kwiboo.se>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Hans Verkuil <hverkuil@xs4all.nl>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Jeffrey Kardatzke <jkardatzke@chromium.org>, kernel@collabora.com,
 Gustavo Padovan <gustavo.padovan@collabora.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Ezequiel,

On Tue, May 5, 2020 at 3:41 PM Ezequiel Garcia <ezequiel@collabora.com> wrote:
>
> The driver should only set the payload on .buf_prepare
> if the buffer is CAPTURE type, or if an OUTPUT buffer
> has a zeroed payload.

Thanks for the patch. Just one question below.

Where does the requirement to set OUTPUT buffer bytesused to sizeimage
if the original bytesused is 0 come from?

Best regards,
Tomasz

>
> Fix it.
>
> Fixes: cd33c830448ba ("media: rkvdec: Add the rkvdec driver")
> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> ---
>  drivers/staging/media/rkvdec/rkvdec.c | 10 +++++++++-
>  1 file changed, 9 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/staging/media/rkvdec/rkvdec.c b/drivers/staging/media/rkvdec/rkvdec.c
> index 225eeca73356..4df2a248ab96 100644
> --- a/drivers/staging/media/rkvdec/rkvdec.c
> +++ b/drivers/staging/media/rkvdec/rkvdec.c
> @@ -456,7 +456,15 @@ static int rkvdec_buf_prepare(struct vb2_buffer *vb)
>                 if (vb2_plane_size(vb, i) < sizeimage)
>                         return -EINVAL;
>         }
> -       vb2_set_plane_payload(vb, 0, f->fmt.pix_mp.plane_fmt[0].sizeimage);
> +
> +       /*
> +        * Buffer's bytesused is written by the driver for CAPTURE buffers,
> +        * or if the application passed zero bytesused on an OUTPUT buffer.
> +        */
> +       if (!V4L2_TYPE_IS_OUTPUT(vq->type) ||
> +           (V4L2_TYPE_IS_OUTPUT(vq->type) && !vb2_get_plane_payload(vb, 0)))
> +               vb2_set_plane_payload(vb, 0,
> +                                     f->fmt.pix_mp.plane_fmt[0].sizeimage);
>         return 0;
>  }
>
> --
> 2.26.0.rc2
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
