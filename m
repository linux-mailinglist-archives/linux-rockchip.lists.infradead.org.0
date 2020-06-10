Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA0041F5A26
	for <lists+linux-rockchip@lfdr.de>; Wed, 10 Jun 2020 19:20:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cbQS7CfUblVZ/+Fh7OzZ2qIkEH5YU+Arkhyr5sZoZUI=; b=FCheIzWzNTxH0v
	jQSivxI0Tb9adDduaf515nL/SU8ZIgrksTpLB6Ew+hjuT9+LV6CcY+R5GT+wQubtsqE7loHa5oQ7r
	QizhZ+nn/dFD5vFb32Q8ryoKkU3DOyv4zVwKAtoMibJKeayLUaN+VvEOVWWOfcEo2NX4TsZSCc3h6
	+78K9oHFXGlW8O24q3a7Iwx2DDM9XVCC9S1SlnMMEsSf0OY2iQ3pFx9V4cDeA9pkwIJl1YEZqDjiv
	gU9dRTBQo8KQ/5JqUC4KX+SptIJfLhVVggdGUqVBBk9esdNAjn7h0gGnJnZXSejNP6OmMht0HIsNx
	KnPEE6ZYQBw/hZZT6VZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj4Ow-00039M-M8; Wed, 10 Jun 2020 17:20:34 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj4OR-0000T3-Pc
 for linux-rockchip@lists.infradead.org; Wed, 10 Jun 2020 17:20:08 +0000
Received: by mail-wm1-x342.google.com with SMTP id c71so2550336wmd.5
 for <linux-rockchip@lists.infradead.org>; Wed, 10 Jun 2020 10:20:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=h8HyYgtFYXdwj3j5EqhXlU6JbKond+XQSDlH3SE1BY0=;
 b=e+r0chico50lMWOLTZK3FJguyDrSMPT1EfqOemgP9hggj2/qkJZGWILBvvruoF1zLZ
 vhAKV3QduMe+a9kck07cQ8zOawV6Xq/HHToytkWsRUXhEZXIlCC3vp39kONRdpOiqyuM
 g9c0AA6tCArSPIEJenVXkgzhf3psDfwMBcyGo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=h8HyYgtFYXdwj3j5EqhXlU6JbKond+XQSDlH3SE1BY0=;
 b=VezR6KEvpNZxELHPVxAcQDwGnbjeDZukygoHVr/HagxZPfoJEHuehIh1gXJyREi0qF
 uOF8jgsACWfFGwWwaoTi7kQaZocz+a16e74kmUoqyM8JNO5Da9LkNuJKaYGPOFJ+WKcm
 gAsk9tCFoqwAPOK5Ovj1Vq7XNsKeHOgqs0Hmi148U/CDWx2pwoz7j6TsDfspXFR9YRZa
 nJsSs9LFOyiEAoTgzZTxpeYe5tCNRfII8U2wZfE1Um8/8izPmrCzMSOW5+QpDO7Jr8pZ
 yxiNpVMSVN3G0VETrbBpgMWTIDSCo6tYrc40RhomhwKmuqk3Rdpvbvjn/NtvQ2vYvI4L
 EwHQ==
X-Gm-Message-State: AOAM533ha20wbo3977qn9VJRtdNNxS2m3+fpo2Qm6jNWmAdaLeyrjkhh
 c6DLi9BOgysavpfl1fjY+wOirohIn1addg==
X-Google-Smtp-Source: ABdhPJxQurlAnyNlApFm06RmgK7xkepR1kY2Hj5RiumxoCo2vSUcxx1yxHKPDHDgb4UwMRt59MTxPw==
X-Received: by 2002:a1c:5683:: with SMTP id k125mr4364907wmb.55.1591809600677; 
 Wed, 10 Jun 2020 10:20:00 -0700 (PDT)
Received: from chromium.org (205.215.190.35.bc.googleusercontent.com.
 [35.190.215.205])
 by smtp.gmail.com with ESMTPSA id c16sm388493wml.45.2020.06.10.10.20.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Jun 2020 10:20:00 -0700 (PDT)
Date: Wed, 10 Jun 2020 17:19:58 +0000
From: Tomasz Figa <tfiga@chromium.org>
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: Re: [PATCH v2 2/4] media: staging: rkisp1: rsz: set default format
 if the given format is not RKISP1_DIR_SRC
Message-ID: <20200610171958.GE201868@chromium.org>
References: <20200609152825.24772-1-dafna.hirschfeld@collabora.com>
 <20200609152825.24772-3-dafna.hirschfeld@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200609152825.24772-3-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_102003_877667_7BFA9FED 
X-CRM114-Status: GOOD (  10.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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
Cc: mchehab@kernel.org, dafna3@gmail.com, hverkuil@xs4all.nl,
 linux-rockchip@lists.infradead.org, helen.koike@collabora.com,
 laurent.pinchart@ideasonboard.com, sakari.ailus@linux.intel.com,
 kernel@collabora.com, ezequiel@collabora.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Dafna,

On Tue, Jun 09, 2020 at 05:28:23PM +0200, Dafna Hirschfeld wrote:
> When setting the sink format of the 'rkisp1_resizer'
> the format should be supported by 'rkisp1_isp' on
> the video source pad. This patch checks this condition
> and set the format to default if the condition is false.
> 
> Fixes: 56e3b29f9f6b "media: staging: rkisp1: add streaming paths"
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> ---
>  drivers/staging/media/rkisp1/rkisp1-common.h  | 4 ++++
>  drivers/staging/media/rkisp1/rkisp1-isp.c     | 4 ----
>  drivers/staging/media/rkisp1/rkisp1-resizer.c | 2 +-
>  3 files changed, 5 insertions(+), 5 deletions(-)
> 

Reviewed-by: Tomasz Figa <tfiga@chromium.org>

Best regards,
Tomasz

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
