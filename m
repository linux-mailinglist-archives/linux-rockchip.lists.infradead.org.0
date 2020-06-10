Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C92811F5992
	for <lists+linux-rockchip@lfdr.de>; Wed, 10 Jun 2020 19:00:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rjTezL8fvWzsEPHMC3nrJHl5upFSjt46fFglYj8LUao=; b=K8wYMniYBVbA42
	aCy1QCr+sYRTTj4cEsyMXUNsY908qsp4/BRnZz4TLfr7RaSKNAecDFX2flzAdFqcqmYVlzGSj7LWH
	22kU0diwkKrDnqKVJBfHcDn28pR9nQr+FzVxZXZX2NUZlK7DcuQGN5GHwfYwnU2CIZahRKty15/qe
	CV60x3GjdRbVRc3hLTv3+aCE7SsFMm5OM7GhCIvo5Zc9Hzrui0DV/heXe7MMZ/GTny2HmvUEGoI9X
	AgXb1MBD/Ca43M7Pn223V0ipWWL41fe7QKwlVCXbWJjJEh6fOmr94703xOsFANpVywEZ3a+vLspIb
	xFaP0i9Vn7UE26vq+hZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj45I-0004t0-JS; Wed, 10 Jun 2020 17:00:16 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj45E-0004Rz-I2
 for linux-rockchip@lists.infradead.org; Wed, 10 Jun 2020 17:00:13 +0000
Received: by mail-wr1-x442.google.com with SMTP id e1so3108307wrt.5
 for <linux-rockchip@lists.infradead.org>; Wed, 10 Jun 2020 10:00:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=AnGNF+99rp4z6Bd3xiiJCSIf7sDeZbkZ8WOmNiX5eng=;
 b=PSOvnNhPIZFtIvLexVK5tr7FXA0cEmEy45eeKdKJKzKyvKa0XOIyEpWg7vauypi2eX
 rgJEQN/19i6TWj7rbbhYiuRoEE9HbtcIuZ8bRuYz+lwjtDCdQff2WGoJX3MfONDIwbxP
 IR/FGBu9KU9i4kLzff6Wt5EISfJWqKqIAsxqo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=AnGNF+99rp4z6Bd3xiiJCSIf7sDeZbkZ8WOmNiX5eng=;
 b=umuxDwlA2D7ilFoQd4yGxK5hMjrN/x6vL/2jUeqH5g+QduuM3M56jKcaFBF5i3uP0M
 9Uoj4Q+dII2OR/cnvaNqkHGFXd/MHB7FjyRUFWeq9t/bZQsIhTDz5prHVKi8l0CZ+gVR
 M0ZQo5krURn6nEgJ9iDAzJ7QwsKuyciFKB1p9UfUD57lRRwKxrg1oFqC2LcbaNOOMn5n
 W/0/oP5n1dmTKJW3lrnIURPgOyKe3YZ03Z5/vSIeiPD5A1WvhUgi03UI/OhDU8zekqYc
 PKuow6L368O3nxpmsA0BO1avjEGSd9cBMVN3jnI5l2aXXwLJ0jVrKHB7ZP8ZABKIZLH5
 cH9w==
X-Gm-Message-State: AOAM5310aMMahJ+kkIaduJsIHRoqtE5Rm4q7eJJQ7Th2otdQQtXbwUDz
 CccHL1+67iS2PsLxfdV/IMPEOA==
X-Google-Smtp-Source: ABdhPJzb5Ucd1G9bJthu0S3u1TR58hi4HHCPychzyEyu+6ggnlNt9N0zGxdLMSnMSvIssd5p1tbGaA==
X-Received: by 2002:a5d:45cb:: with SMTP id b11mr4571396wrs.235.1591808409432; 
 Wed, 10 Jun 2020 10:00:09 -0700 (PDT)
Received: from chromium.org (205.215.190.35.bc.googleusercontent.com.
 [35.190.215.205])
 by smtp.gmail.com with ESMTPSA id t8sm346018wmi.46.2020.06.10.10.00.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Jun 2020 10:00:08 -0700 (PDT)
Date: Wed, 10 Jun 2020 17:00:07 +0000
From: Tomasz Figa <tfiga@chromium.org>
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: Re: [PATCH v4 3/5] media: staging: rkisp1: validate links before
 powering and streaming
Message-ID: <20200610170007.GB201868@chromium.org>
References: <20200522075522.6190-1-dafna.hirschfeld@collabora.com>
 <20200522075522.6190-4-dafna.hirschfeld@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200522075522.6190-4-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_100012_619785_21158FB7 
X-CRM114-Status: UNSURE (   8.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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
Cc: niklas.soderlund@ragnatech.se--annotate, mchehab@kernel.org,
 dafna3@gmail.com, hverkuil@xs4all.nl, linux-rockchip@lists.infradead.org,
 helen.koike@collabora.com, laurent.pinchart@ideasonboard.com,
 sakari.ailus@linux.intel.com, skhan@linuxfoundation.org, kernel@collabora.com,
 ezequiel@collabora.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Fri, May 22, 2020 at 09:55:20AM +0200, Dafna Hirschfeld wrote:
> In function rkisp1_vb2_start_streaming, the call to
> media_pipeline_start should be the first thing in order
> to validate the links and prevents their state from being modified
> before power up and streaming.
> 
> Adjust stop streaming to the same logic, call media_pipeline_stop
> after we disable streaming on the entities in the topology.
> 
> Signed-off-by: Helen Koike <helen.koike@collabora.com>
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> ---
>  drivers/staging/media/rkisp1/rkisp1-capture.c | 21 ++++++++++---------
>  1 file changed, 11 insertions(+), 10 deletions(-)
> 

Reviewed-by: Tomasz Figa <tfiga@chromium.org>

Best regards,
Tomasz

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
