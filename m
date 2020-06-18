Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB5181FFAE2
	for <lists+linux-rockchip@lfdr.de>; Thu, 18 Jun 2020 20:15:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WazTE44bm7A/wjXkV92vyV6vioH1MRTdoNVautEM33E=; b=lfflr7+NtLSo0d
	yww0NqnyvYgzjvwjxoE8Qf5jTpwajLEtb0XT1EAUKqh90Rl6Q6+0h4bwj7UijRHylfdegeDpCaGib
	fnLr8ylF6HyPWpaWDVcAo3nWpMrKhuqzeQMlp6Td5+5NP6ovderztUqYlJOyplMNeVMummoEbtoVj
	sxMbjyZEJJPNh/HdlpbbWkcNxbmP37JO/ggbEfjwc2f0kHZ+UyaZpeC+Hr0E3mfLnKFtCEIyw6rNi
	w4G/OkZaLRm92MuTjFpuBazAMZ8dFoW6UESZmD0dzNqeqyCsgG4ximSxCWIBK311KlKbvsex5cxuN
	8O7XvG5vu8MdTRszQjVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlz4P-00043h-2Z; Thu, 18 Jun 2020 18:15:25 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlz4M-00042f-Pa
 for linux-rockchip@lists.infradead.org; Thu, 18 Jun 2020 18:15:23 +0000
Received: by mail-wm1-x343.google.com with SMTP id t194so6666236wmt.4
 for <linux-rockchip@lists.infradead.org>; Thu, 18 Jun 2020 11:15:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=rYZcCpEBWDuy84TWehiyL3pUu49gmGm9qhEhgRoOMIY=;
 b=Epis1GM3O69JLDO/yi6VV8g8PigR3KNz/q/7mBShFIl2phy4rGEZJadVA1+hKQOurA
 8SSJGhbelR0XrPxavyhM9mCPKMS1caIvzItVAJtEr42jU6xVnSHtKxbPjYTx1RmXuU14
 N4AqLjjWBUV7UAtf0WLysceEUzAArUH/2hy4Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=rYZcCpEBWDuy84TWehiyL3pUu49gmGm9qhEhgRoOMIY=;
 b=rYXs98BMsGztU9f+/6FkU/1MdOS/uF3l4K/DPoOd+3yg7lOK/9Qv58pCTiOmC5Z23K
 ++t30eDN+ShPkiLeBk/eonV7v7TSwU3ek5ZuI+nZC7G21yLbJhklObzs7YsFlNUj6pzv
 Bay2Ncpi6dcHvGZI0qY3u1r7RD6STOWgy2zpRS+XqetbDcIYM04a75nQZwHZrsCTSnoh
 nsYMN/GJoevxLrLQjOCcdjTQzDNNM4byA1Q4l4GbrPLl0ypwrWe3Biv1RU5AfgNH7PsR
 0Ch8n1hqMAwlZaKaQQBOi43flMo6n61JCkWMJ0to3BUU79wSys8N/5KcuJQLB1lvyzDq
 vffQ==
X-Gm-Message-State: AOAM533UcpgT7xoR8Rcziy6cvfV//Q42sWGQ6imBbwrGdyxqIeqh89o0
 OTDV+MrE7St3TXipDF0Qf6Ugyg==
X-Google-Smtp-Source: ABdhPJyDhU5hxcx5VpXHjUYCJv/HKPXfuLMTNk7DOTZhjVFocxpfIzErerAlnJEwyggRxt1hvD4tmw==
X-Received: by 2002:a1c:80d4:: with SMTP id b203mr5303404wmd.138.1592504118101; 
 Thu, 18 Jun 2020 11:15:18 -0700 (PDT)
Received: from chromium.org (205.215.190.35.bc.googleusercontent.com.
 [35.190.215.205])
 by smtp.gmail.com with ESMTPSA id t188sm4503006wmt.27.2020.06.18.11.15.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Jun 2020 11:15:17 -0700 (PDT)
Date: Thu, 18 Jun 2020 18:15:16 +0000
From: Tomasz Figa <tfiga@chromium.org>
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: Re: [PATCH v4 3/4] media: staging: rkisp1: rename macros
 'RKISP1_DIR_*' to 'RKISP1_ISP_SD_*'
Message-ID: <20200618181516.GE10831@chromium.org>
References: <20200618113518.30057-1-dafna.hirschfeld@collabora.com>
 <20200618113518.30057-4-dafna.hirschfeld@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200618113518.30057-4-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_111522_831686_2293EF0E 
X-CRM114-Status: UNSURE (   8.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mchehab@kernel.org, dafna3@gmail.com, hverkuil@xs4all.nl,
 linux-rockchip@lists.infradead.org, helen.koike@collabora.com,
 laurent.pinchart@ideasonboard.com, sakari.ailus@linux.intel.com,
 kernel@collabora.com, ezequiel@collabora.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Thu, Jun 18, 2020 at 01:35:17PM +0200, Dafna Hirschfeld wrote:
> The macros 'RKISP1_DIR_*' are flags that indicate on which
> pads of the isp subdevice the media bus code is supported. So the
> prefix RKISP1_ISP_SD_ is better.
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> Acked-by: Helen Koike <helen.koike@collabora.com>
> ---
>  drivers/staging/media/rkisp1/rkisp1-isp.c | 46 +++++++++++------------
>  1 file changed, 23 insertions(+), 23 deletions(-)
> 

Reviewed-by: Tomasz Figa <tfiga@chromium.org>

Best regards,
Tomasz

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
