Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 048561FFADF
	for <lists+linux-rockchip@lfdr.de>; Thu, 18 Jun 2020 20:14:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lI++jtJhsH2j/a9ekqHQA7Vk5XhgHq/1Khas9SXcooE=; b=djszt9RI2aXywc
	/LkujHDF39y7694ZGyYZFRVzEA02Uk9K7eE7Q2LFoYazzs4eQbOwb3qM2UeSr4csV/xiIOS/4VCV3
	/lWrv+Q5z5e+TQELrZsCFeLD/KwvPCvBLulvwHwNZ031AAssXCvLdK/LjEpKNY8dZZMK/0o0sZ5Tu
	Hp07PxNUtXqfmMbjkyQkC8Q5Evv1dTRtxvhQj1RYwOVdDZBstDScVrdPe/0HlMipatQJVQY9UBXFV
	9JVd0YlJMhOdF3BtTlC/VVe//A2vz1uFcf2k0yqfsrW7OdV/PtOZXOIz6kfLtucIzzuzDpD+sq9gR
	gkxgAZorIe5T+kY7372A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlz3H-0001ZB-GF; Thu, 18 Jun 2020 18:14:15 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlz3E-0001Yc-1A
 for linux-rockchip@lists.infradead.org; Thu, 18 Jun 2020 18:14:13 +0000
Received: by mail-wm1-x341.google.com with SMTP id l26so6069405wme.3
 for <linux-rockchip@lists.infradead.org>; Thu, 18 Jun 2020 11:14:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=qTsokCZQ3qkD3gmU6orySz5wx9a0kjdCHHCwCQljKo8=;
 b=VL24XiTpgMInwdhlip+IPwySXB/ZhlcOUp9mxr5jqzwXyL2xK687TGVeaoLYnisnPA
 KA9yco9zhBTs9qfP8hTdVCi15PMZ0/y7hgXxyKP/vp971MQX19AjbBsHP437LO7yjVA6
 yOvbxANf3uj8DbBmShrFDvfgyn1GN1VlXnPFg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=qTsokCZQ3qkD3gmU6orySz5wx9a0kjdCHHCwCQljKo8=;
 b=tO74stUk+2QPPA30UAQQZLub8IU+To9mBVT7jH5c0zkZNJz/fDy0qyPcw0YbYAXQDg
 d7BJ2EC24mIsfOKO/lVGQAEU6Dqy3BXPC/ASKsi7EqXGQgNuAHspUGWOfEuRjnq0fmCB
 s8NQwADR9q3xqMSyyFGdUdhYeUDErD7qZR3zCC5fCNqULZtcMgudiEH0YgMp6Q34yEDI
 SXN49g4UznlNscdWPvF1eSUrwOm67sxKYvsw65lOwZEe0WBklLq/kVw+YKnHX/jSL9oC
 1K7/GbF5E41T97d5iVJEYVvdKA+u1CcJ6DcwMtqftsXqM37TGBpz8E4BZACWmovJjOW1
 2fmQ==
X-Gm-Message-State: AOAM532h6o46z5E2/x3fTYtdB1JHNorEMe7OvsmQj09E6qXZ7DIXWY2v
 fu4VKDxGGfiP8hoZ0yFSwz0OKw==
X-Google-Smtp-Source: ABdhPJxz3cKlge7PwHSTIvLtqDFuNMrmSXpcG59MmBjXTzkvnzaVbDE5OVOsX9qXQwszllNUAT437A==
X-Received: by 2002:a7b:c385:: with SMTP id s5mr5663214wmj.121.1592504049649; 
 Thu, 18 Jun 2020 11:14:09 -0700 (PDT)
Received: from chromium.org (205.215.190.35.bc.googleusercontent.com.
 [35.190.215.205])
 by smtp.gmail.com with ESMTPSA id a15sm4981844wrh.54.2020.06.18.11.14.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Jun 2020 11:14:09 -0700 (PDT)
Date: Thu, 18 Jun 2020 18:14:07 +0000
From: Tomasz Figa <tfiga@chromium.org>
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: Re: [PATCH v4 2/4] media: staging: rkisp1: remove macro
 RKISP1_DIR_SINK_SRC
Message-ID: <20200618181407.GD10831@chromium.org>
References: <20200618113518.30057-1-dafna.hirschfeld@collabora.com>
 <20200618113518.30057-3-dafna.hirschfeld@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200618113518.30057-3-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_111412_068905_3F36FC44 
X-CRM114-Status: UNSURE (   9.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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

On Thu, Jun 18, 2020 at 01:35:16PM +0200, Dafna Hirschfeld wrote:
> The macro RKISP1_DIR_SINK_SRC is a mask of two flags.
> The macro hides the fact that it's a mask and the code
> is actually more clear if we replace it the with bitwise-or explicitly.
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> Acked-by: Helen Koike <helen.koike@collabora.com>
> ---
>  drivers/staging/media/rkisp1/rkisp1-isp.c | 25 +++++++++++------------
>  1 file changed, 12 insertions(+), 13 deletions(-)
> 

Reviewed-by: Tomasz Figa <tfiga@chromium.org>

Best regards,
Tomasz

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
