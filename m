Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35AE21F5937
	for <lists+linux-rockchip@lfdr.de>; Wed, 10 Jun 2020 18:37:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZXYeWldcqeWpYRadZxCM5Lh/Kft+YxWyl3nM52JS6r0=; b=q6MLYR62c4ykeB
	h2r5Y0bTczvuQaf1bzsyKwFkEqBU+NLP+bqlWq8K6n6P2oUUX/2eYaXSjDWB++zgX9MdG/HRzS8KN
	83TJuutSlr5Pq017/E5Pg/8fqtU0QvIbuEkSFMtkJaQfKGwnKxl2kT3n1J6R7Ki/dxWPNG4Cn1nrs
	9R9nBsuYJGFt84PxzeBGET8vw9jJ8TFUnwcP/sEf5zlWAPNbdpDTE1OTu06R42jXZbKCQjyQGc3P9
	ldqNmjGxVDSfa4RJfmcJgv1Jn6kklCTEOuafOEfQAFNdxwVhWHdG5WXOKCQsS+23kJTaJBxtXaJGl
	JYfB6HeD0zdqe3ejGP/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj3j8-0004jP-MT; Wed, 10 Jun 2020 16:37:22 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj3j4-0004if-Lu
 for linux-rockchip@lists.infradead.org; Wed, 10 Jun 2020 16:37:20 +0000
Received: by mail-wm1-x344.google.com with SMTP id l26so2421031wme.3
 for <linux-rockchip@lists.infradead.org>; Wed, 10 Jun 2020 09:37:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=x/GwKp0pF1c+WHYyvunrjPKROoiPDpTyBwp2iRJzC6E=;
 b=NNJT/c3vHOw64dt28xCLLEYxppoSe/DIMpD2Y0IO/1cDpfxkPdlFQ8FYJXWuyvklwr
 pViU+GKf12AlL7MgTJs8EMZk7sh8kMX9j8loX8YlHtJL/LZEYRPtkjZManzBPtMw0J8I
 V6jiv1l4TiPjfV+bTCmZuFHVTgE1l9OpSBQPQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=x/GwKp0pF1c+WHYyvunrjPKROoiPDpTyBwp2iRJzC6E=;
 b=aJYiR43aKbxxziom3ZXanHcyIlILOygMaFXXc3L5mSMbPnjzgsKJW6E8icmFwSMoII
 8xnqwGsXdC0GbVvh5DDH7pblkUNt6CjlseG/AYAvMDEZTFfrlhkmy54T/jVyIWjhgkyt
 euB/bw9lz9DZih2En5r5awxW4Fg3RhbaIXFXp2ZkdYWciMeTqbfnsgrBA8LiF6RKS46Z
 ujnjvEW8UoCD/yQrDO16ycvTBKOkw+8J9CY1K4heaXzfpUqwE2yAcAhttjr+efvUCCYD
 U/SANTETc30mLCEYs+03ocw+k8MBfXmxTQlAfLlEyn2GCoSLIrugRBixPGGe14R/x789
 Cujw==
X-Gm-Message-State: AOAM533fMoKMDn1AWk08oRDXcGoae0qGkIDWh/21Of2Fgaf7KMqVAAUU
 MkYyZSSDw9ZAlkNKWC5AR0xzlg==
X-Google-Smtp-Source: ABdhPJwTYqUh1Z42tS8/+r1TdIuaPrc9u6+HXE7CX4mWC3Z0wigKmmRMYrIkdN82D/KlN0gSOYetUQ==
X-Received: by 2002:a7b:cf06:: with SMTP id l6mr4005337wmg.63.1591807035767;
 Wed, 10 Jun 2020 09:37:15 -0700 (PDT)
Received: from chromium.org (205.215.190.35.bc.googleusercontent.com.
 [35.190.215.205])
 by smtp.gmail.com with ESMTPSA id u12sm428991wrq.90.2020.06.10.09.37.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Jun 2020 09:37:14 -0700 (PDT)
Date: Wed, 10 Jun 2020 16:37:13 +0000
From: Tomasz Figa <tfiga@chromium.org>
To: Helen Koike <helen.koike@collabora.com>
Subject: Re: [PATCH v2 0/2] media: staging: rkisp1: allow simultaneous
 streaming from multiple capture devices
Message-ID: <20200610163713.GA201868@chromium.org>
References: <20200316210044.595312-1-helen.koike@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200316210044.595312-1-helen.koike@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_093718_727697_9C4F4052 
X-CRM114-Status: GOOD (  13.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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
Cc: mchehab@kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, hans.verkuil@cisco.com,
 kernel@collabora.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Mon, Mar 16, 2020 at 06:00:42PM -0300, Helen Koike wrote:
> Hi,
> 
> This series adds support for simultaneous streaming from both capture
> devices (rkisp1_selfpath and rkisp1_mainpath).
> 
> It depends on the following series for multistream to work properly, but
> it doesn't mean it can't be merged before:
> 
> 	"media: add v4l2_pipeline_stream_{enable,disable} helpers"
> 	https://patchwork.linuxtv.org/cover/62233/
> 
> And it is also available at:
> 
> 	https://gitlab.collabora.com/koike/linux/tree/rockchip/isp/multistream
> 
> Patch 1/2 fixes return error handling from pm functions, which was
> preventing the second stream to start.
> 
> Patch 2/2 serializes start/stop streaming calls, since they both
> and modify shared variables.
> 
> Changes in v2:
> - Rebased on media/master
> - Removed the following patch from the series:
> "media: staging: rkisp1: do not call s_stream if the entity is still in use"
> It was replaced by "media: add v4l2_pipeline_stream_{enable,disable} helpers"
> https://patchwork.linuxtv.org/cover/62233/
> 

For the whole series:

Reviewed-by: Tomasz Figa <tfiga@chromium.org>

Best regards,
Tomasz

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
